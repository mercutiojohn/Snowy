/*
 * Copyright [2022] [https://www.xiaonuo.vip]
 *
 * Snowy采用APACHE LICENSE 2.0开源协议，您在使用过程中，需要注意以下几点：
 *
 * 1.请不要删除和修改根目录下的LICENSE文件。
 * 2.请不要删除和修改Snowy源码头部的版权声明。
 * 3.本项目代码可免费商业使用，商业使用请保留源码和相关描述文件的项目出处，作者声明等。
 * 4.分发源码时候，请注明软件出处 https://www.xiaonuo.vip
 * 5.不可二次分发开源参与同类竞品，如有想法可联系团队xiaonuobase@qq.com商议合作。
 * 6.若您的项目无法满足以上几点，需要更多功能代码，获取Snowy商业授权许可，请在官网购买授权，地址为 https://www.xiaonuo.vip
 */
package vip.xiaonuo.client.modular.user.service.impl;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import vip.xiaonuo.client.core.enums.ClientYesOrNoEnum;
import vip.xiaonuo.client.modular.user.entity.ClientUserExt;
import vip.xiaonuo.client.modular.user.enums.ClientUserSourceFromTypeEnum;
import vip.xiaonuo.client.modular.user.mapper.ClientUserExtMapper;
import vip.xiaonuo.client.modular.user.service.ClientUserExtService;
import vip.xiaonuo.common.util.CommonCryptogramUtil;
import vip.xiaonuo.common.util.CommonOtpUtil;

/**
 * C端用户扩展Service接口实现类
 *
 * @author yubaoshan
 * @date  2024/12/21 01:25
 **/
@Service
public class ClientUserExtServiceImpl extends ServiceImpl<ClientUserExtMapper, ClientUserExt> implements ClientUserExtService {

    @Override
    public void updatePasswordLastTime(String userId) {
        ClientUserExt clientUserExt = this.getOne(new LambdaQueryWrapper<ClientUserExt>().eq(ClientUserExt::getUserId, userId));
        if(ObjectUtil.isEmpty(clientUserExt)){
            clientUserExt = new ClientUserExt();
            clientUserExt.setUserId(userId);
            clientUserExt.setSourceFromType(ClientUserSourceFromTypeEnum.SYSTEM_ADD.getValue());
            clientUserExt.setPasswordUpdateTime(DateTime.now());
            this.save(clientUserExt);
        } else {
            clientUserExt.setPasswordUpdateTime(DateTime.now());
            this.updateById(clientUserExt);
        }
    }

    @Override
    public ClientUserExt createExtInfo(String userId, String sourceFromType) {
        ClientUserExt clientUserExt = new ClientUserExt();
        clientUserExt.setUserId(userId);
        clientUserExt.setSourceFromType(sourceFromType);
        clientUserExt.setPasswordUpdateTime(DateTime.now());
        clientUserExt.setHasBindOtp(ClientYesOrNoEnum.NO.getValue());
        String otpSecretKeyEncrypt = CommonCryptogramUtil.doSm4CbcEncrypt(CommonOtpUtil.generateSecretKey());
        clientUserExt.setOtpSecretKey(otpSecretKeyEncrypt);
        this.save(clientUserExt);
        return clientUserExt;
    }
}
