.class public Lcom/baidu/wallet/core/plugins/pluginupgrade/a;
.super Lcom/baidu/wallet/core/beans/BaseBean;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/beans/BaseBean;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;->a:Ljava/lang/String;

    return-void
.end method

.method public execBean()V
    .registers 2

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;

    invoke-super {p0, v0}, Lcom/baidu/wallet/core/beans/BaseBean;->execBean(Ljava/lang/Class;)V

    return-void
.end method

.method public generateRequestParam()Ljava/util/List;
    .registers 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-static {}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getSystemCPUInfo()Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/baidu/wallet/core/utils/PhoneUtils;->getSystemCPUInfo()Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/utils/PhoneUtils$CPUInfo;->getCpuPath()Ljava/lang/String;

    move-result-object v0

    :cond_15
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cpuinfo"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1f
    new-instance v2, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_65

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin_info["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_5e} :catch_61

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_65
    return-object v1
.end method

.method public getBeanId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHttpMethod()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/DebugConfig;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/core/DebugConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/DebugConfig;->getWalletPluginHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
