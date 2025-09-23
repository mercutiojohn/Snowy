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
package vip.xiaonuo.dev.modular.file.provider;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import vip.xiaonuo.dev.api.DevConfigApi;
import vip.xiaonuo.dev.api.DevFileApi;
import vip.xiaonuo.dev.modular.file.enums.DevFileEngineTypeEnum;
import vip.xiaonuo.dev.modular.file.param.DevFileIdParam;
import vip.xiaonuo.dev.modular.file.service.DevFileService;

import java.util.List;
import java.util.Optional;

/**
 * 文件API接口提供者
 *
 * @author xuyuxiang
 * @date 2022/6/22 15:32
 **/
@Service
public class DevFileApiProvider implements DevFileApi {

    /** 默认文件引擎 */
    private static final String SNOWY_SYS_DEFAULT_FILE_ENGINE_KEY = "SNOWY_SYS_DEFAULT_FILE_ENGINE";

    @Resource
    private DevConfigApi devConfigApi;

    @Resource
    private DevFileService devFileService;

    @Override
    public String uploadDynamicReturnId(MultipartFile file) {
        return devFileService.uploadReturnId(devConfigApi.getValueByKey(SNOWY_SYS_DEFAULT_FILE_ENGINE_KEY), file);
    }

    @Override
    public String uploadDynamicReturnUrl(MultipartFile file) {
        return devFileService.uploadReturnUrl(devConfigApi.getValueByKey(SNOWY_SYS_DEFAULT_FILE_ENGINE_KEY), file);
    }

    @Override
    public String storageFileWithReturnUrlLocal(MultipartFile file) {
        return devFileService.uploadReturnUrl(DevFileEngineTypeEnum.LOCAL.getValue(), file);
    }

    @Override
    public String storageFileWithReturnIdLocal(MultipartFile file) {
        return devFileService.uploadReturnId(DevFileEngineTypeEnum.LOCAL.getValue(), file);
    }

    @Override
    public String storageFileWithReturnUrlAliyun(MultipartFile file) {
        return devFileService.uploadReturnUrl(DevFileEngineTypeEnum.ALIYUN.getValue(), file);
    }

    @Override
    public String storageFileWithReturnIdAliyun(MultipartFile file) {
        return devFileService.uploadReturnId(DevFileEngineTypeEnum.ALIYUN.getValue(), file);
    }

    @Override
    public String storageFileWithReturnUrlTencent(MultipartFile file) {
        return devFileService.uploadReturnUrl(DevFileEngineTypeEnum.TENCENT.getValue(), file);
    }

    @Override
    public String storageFileWithReturnIdTencent(MultipartFile file) {
        return devFileService.uploadReturnId(DevFileEngineTypeEnum.TENCENT.getValue(), file);
    }

    @Override
    public String storageFileWithReturnUrlMinio(MultipartFile file) {
        return devFileService.uploadReturnUrl(DevFileEngineTypeEnum.MINIO.getValue(), file);
    }

    @Override
    public String storageFileWithReturnIdMinio(MultipartFile file) {
        return devFileService.uploadReturnId(DevFileEngineTypeEnum.MINIO.getValue(), file);
    }

    @Override
    public JSONObject getFileInfoById(String id) {
        return Optional.ofNullable(devFileService.getById(id))
                .map(JSONUtil::parseObj)
                .orElse(new JSONObject());
    }

    @Override
    public void deleteAbsoluteById(String id) {
        DevFileIdParam devFileIdParam = new DevFileIdParam();
        devFileIdParam.setId(id);
        devFileService.deleteAbsolute(devFileIdParam);
    }

    @Override
    public JSONArray getFileListByIds(List<String> ids) {
        JSONArray jsonArray = new JSONArray();
        jsonArray.addAll(devFileService.getFileListByIds(ids));
        return jsonArray;
    }

    @Override
    public String storageFileWithReturnUrlOss(MultipartFile file) {
        // 获取系统配置的默认文件存储引擎
        String defaultEngine = devConfigApi.getValueByKey(SNOWY_SYS_DEFAULT_FILE_ENGINE_KEY);
        // 如果配置为空，默认使用本地存储
        if (ObjectUtil.isEmpty(defaultEngine)) {
            defaultEngine = DevFileEngineTypeEnum.LOCAL.getValue();
        }
        // 根据配置的引擎类型调用相应的存储方法
        return devFileService.uploadReturnUrl(defaultEngine, file);
    }
}
