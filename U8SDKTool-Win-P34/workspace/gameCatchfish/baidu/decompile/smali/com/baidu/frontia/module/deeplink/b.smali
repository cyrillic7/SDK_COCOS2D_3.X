.class Lcom/baidu/frontia/module/deeplink/b;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "geolocation"

    const-string v2, "com.baidu.frontia.module.deeplink.GeoLocation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getcuid"

    const-string v2, "com.baidu.frontia.module.deeplink.GetCuid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getapn"

    const-string v2, "com.baidu.frontia.module.deeplink.GetApn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getPushServiceVersion"

    const-string v2, "com.baidu.frontia.module.deeplink.GetVersion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "addDebugDevice"

    const-string v2, "com.baidu.frontia.module.deeplink.addDebugDevice"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getNetworkType"

    const-string v2, "com.baidu.frontia.module.deeplink.GetNetworkType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "subscribeLight"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "unsubscribeLight"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "bindLight"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "unbindLight"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "subscribeService"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "unsubscribeService"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getSubscribedApps"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getSubscribedAppids"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getSubscribedAppinfos"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getMsgs"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getUnreadMsgNumber"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "setMsgRead"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "setAllMsgRead"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "deleteMsg"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "deleteAllMsg"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getUniqueId"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "isBind"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "isSubscribe"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "getWeakSubscribedApps"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "blackWeakSubscibedApps"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "weakBindLight"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "weakSubscribeService"

    const-string v2, "com.baidu.frontia.module.deeplink.LightApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "detectRuntime"

    const-string v2, "com.baidu.frontia.module.deeplink.RuntimeApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    const-string v1, "startRuntime"

    const-string v2, "com.baidu.frontia.module.deeplink.RuntimeApi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    const-string v1, "bindLight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    const-string v1, "unbindLight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    const-string v1, "subscribeService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    const-string v1, "unsubscribeService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    const-string v1, "getUniqueId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    const-string v1, "isBind"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    const-string v1, "getPushServiceVersion"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    const-string v1, "getcuid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private a(Lcom/baidu/android/a/a/b;)V
    .registers 4

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "CmdHandler"

    const-string v1, "Localserver responseCrossDomain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Lcom/baidu/android/a/a/b;->a(Ljava/lang/String;)V

    const-string v0, "<?xml version=\"1.0\"?>"

    invoke-virtual {p1, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    const-string v0, "<!DOCTYPE cross-domain-policy SYSTEM \"http://www.macromedia.com/xml/dtds/cross-domain-policy.dtd\">"

    invoke-virtual {p1, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    const-string v0, "<cross-domain-policy>"

    invoke-virtual {p1, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    const-string v0, "<allow-access-from domain=\"*\" to-ports=\"*\" />"

    invoke-virtual {p1, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    const-string v0, "</cross-domain-policy>"

    invoke-virtual {p1, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/baidu/android/a/a/b;->a(I)V

    return-void
.end method

.method public static a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    const-string v0, "text/javascript"

    invoke-virtual {p0, v0}, Lcom/baidu/android/a/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/android/a/a/b;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1f} :catch_53

    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/baidu/android/a/a/b;->a(I)V

    return-void

    :catch_53
    move-exception v1

    goto :goto_1f
.end method

.method private a(Ljava/lang/String;Lcom/baidu/android/a/a/b;)V
    .registers 8

    const/16 v4, 0x194

    :try_start_2
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5a

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.baidu.android.pushservice.action.METHOD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "method"

    const-string v3, "method_webapp_bind_from_deeplink"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.baidu.pushservice.webapp.apikey"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v0, 0xc8

    invoke-virtual {p2, v0}, Lcom/baidu/android/a/a/b;->a(I)V

    const-string v0, "ok"

    invoke-virtual {p2, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    :goto_59
    return-void

    :cond_5a
    const/16 v0, 0x194

    invoke-virtual {p2, v0}, Lcom/baidu/android/a/a/b;->a(I)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5f} :catch_60

    goto :goto_59

    :catch_60
    move-exception v0

    invoke-virtual {p2, v4}, Lcom/baidu/android/a/a/b;->a(I)V

    goto :goto_59
.end method

.method private a(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)Z
    .registers 7

    const/4 v0, 0x0

    const-string v1, "^http[s]?:\\/\\/[^\\/]+(\\.baidu\\.com|\\.hao123\\.com)(:\\d+)?(\\/.*|)$"

    const-string v2, "Referer"

    invoke-virtual {p1, v2}, Lcom/baidu/android/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method private b(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V
    .registers 6

    invoke-virtual {p1}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_13

    :cond_d
    const/16 v0, 0x194

    invoke-virtual {p2, v0}, Lcom/baidu/android/a/a/b;->a(I)V

    :goto_12
    return-void

    :cond_13
    const-string v1, "callback"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/frontia/module/deeplink/g;->a:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_12
.end method

.method private b(Ljava/lang/String;)Z
    .registers 12

    const/4 v1, 0x0

    const/4 v4, 0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_88

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "http://127.0.0.1"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v1

    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_55
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    move v2, v4

    :goto_70
    if-eqz v2, :cond_89

    :goto_72
    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    :cond_88
    return v1

    :cond_89
    move v3, v2

    goto :goto_45

    :cond_8b
    move v2, v3

    goto :goto_70

    :cond_8d
    move-object v1, v0

    goto :goto_72
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "getcuid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "020801"

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const-string v1, "geolocation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "020803"

    goto :goto_b

    :cond_17
    const-string v1, "getapn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "020802"

    goto :goto_b
.end method

.method private d(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V
    .registers 15

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/frontia/module/deeplink/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v6}, Lcom/baidu/frontia/module/deeplink/b;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v1, "CmdHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Localserver CMD received, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-virtual {p0, v0, p2, p3}, Lcom/baidu/frontia/module/deeplink/b;->b(Ljava/lang/String;Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)Z

    move-result v1

    if-eqz v1, :cond_43

    :goto_42
    return-void

    :cond_43
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4f

    :cond_4b
    invoke-direct {p0, p2, p3}, Lcom/baidu/frontia/module/deeplink/b;->b(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V

    goto :goto_42

    :cond_4f
    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v5, v1

    move-object v4, v0

    :goto_5f
    const/4 v0, 0x3

    if-eq v5, v0, :cond_159

    const-string v0, "client_id"

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_70

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_84

    :cond_70
    invoke-direct {p0, p2, p3}, Lcom/baidu/frontia/module/deeplink/b;->b(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V

    goto :goto_42

    :cond_74
    const-string v1, "push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v1, 0x3

    move v5, v1

    move-object v4, v0

    goto :goto_5f

    :cond_80
    const/4 v1, 0x1

    move v5, v1

    move-object v4, v0

    goto :goto_5f

    :cond_84
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_152

    const-string v0, ""

    const-string v3, ""

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c5

    invoke-virtual {v6}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a9
    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a9

    :cond_c5
    :goto_c5
    :try_start_c5
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f7

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_df

    if-lez v1, :cond_df

    if-ge v0, v1, :cond_f5

    :cond_df
    :goto_df
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_f3} :catch_f9

    move-result-object p1

    goto :goto_c5

    :cond_f5
    move v0, v1

    goto :goto_df

    :cond_f7
    move-object v0, v2

    goto :goto_a5

    :catch_f9
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_118

    const-string v1, "CmdHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "commandDeal E: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    move-object v0, v2

    goto :goto_a5

    :cond_11a
    const/16 v0, 0x2f

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_15e

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_12f
    new-instance v3, Lcom/baidu/frontia/module/deeplink/a/c;

    iget-object v4, p0, Lcom/baidu/frontia/module/deeplink/b;->a:Landroid/content/Context;

    const/4 v2, 0x2

    if-ne v5, v2, :cond_14b

    const/4 v2, 0x1

    :goto_137
    invoke-direct {v3, v4, v7, v2}, Lcom/baidu/frontia/module/deeplink/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v3, v1, v0, v8}, Lcom/baidu/frontia/module/deeplink/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/frontia/module/deeplink/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14d

    const/16 v0, 0xc8

    invoke-virtual {p3, v0}, Lcom/baidu/android/a/a/b;->a(I)V

    goto/16 :goto_42

    :cond_14b
    const/4 v2, 0x0

    goto :goto_137

    :cond_14d
    invoke-direct {p0, p2, p3}, Lcom/baidu/frontia/module/deeplink/b;->b(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V

    goto/16 :goto_42

    :cond_152
    const/16 v0, 0x194

    invoke-virtual {p3, v0}, Lcom/baidu/android/a/a/b;->a(I)V

    goto/16 :goto_42

    :cond_159
    invoke-direct {p0, p1, p3}, Lcom/baidu/frontia/module/deeplink/b;->a(Ljava/lang/String;Lcom/baidu/android/a/a/b;)V

    goto/16 :goto_42

    :cond_15e
    move-object v0, v3

    move-object v1, v4

    goto :goto_12f
.end method

.method public b(Ljava/lang/String;Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)Z
    .registers 12

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/frontia/module/deeplink/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "crossdomain.xml"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    invoke-direct {p0, p1}, Lcom/baidu/frontia/module/deeplink/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_175

    invoke-direct {p0, p2, p3}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)Z

    move-result v0

    :goto_1f
    if-eqz v0, :cond_bc

    const-string v0, "crossdomain.xml"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0, p3}, Lcom/baidu/frontia/module/deeplink/b;->a(Lcom/baidu/android/a/a/b;)V

    :cond_2c
    :goto_2c
    move v0, v2

    goto :goto_14

    :cond_2e
    const/4 v1, 0x0

    :try_start_2f
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/module/deeplink/d;
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_39} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_39} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_39} :catch_7d
    .catch Ljava/lang/InstantiationException; {:try_start_2f .. :try_end_39} :catch_9c

    :goto_39
    if-eqz v0, :cond_2c

    invoke-interface {v0, p2, p3}, Lcom/baidu/frontia/module/deeplink/d;->execute(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V

    goto :goto_2c

    :catch_3f
    move-exception v0

    const-string v3, "CmdHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_39

    :catch_5e
    move-exception v0

    const-string v3, "CmdHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_39

    :catch_7d
    move-exception v0

    const-string v3, "CmdHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_39

    :catch_9c
    move-exception v0

    const-string v3, "CmdHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_39

    :cond_bc
    invoke-virtual {p2}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v1, v2, :cond_cb

    :cond_c8
    move v0, v2

    goto/16 :goto_14

    :cond_cb
    const-string v1, "callback"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_d8

    move v0, v2

    goto/16 :goto_14

    :cond_d8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_dd
    const-string v1, "error"

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    const-string v4, "Referer Forbidden"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/baidu/frontia/module/deeplink/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_129

    new-instance v4, Lcom/baidu/android/pushservice/f/c;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/f/c;-><init>()V

    iput-object v1, v4, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/android/pushservice/f/c;->h:J

    invoke-virtual {p2}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_16e

    invoke-virtual {p2}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    const-string v5, "ref_id"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16e

    invoke-virtual {p2}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v1

    const-string v5, "ref_id"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/baidu/android/pushservice/f/c;->c:Ljava/lang/String;

    :goto_11d
    const/4 v1, 0x4

    iput v1, v4, Lcom/baidu/android/pushservice/f/c;->j:I

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_129

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/b;->a:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/baidu/android/pushservice/f/t;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/c;)J
    :try_end_129
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_129} :catch_173

    :cond_129
    :goto_129
    const-string v1, "text/javascript"

    invoke-virtual {p3, v1}, Lcom/baidu/android/a/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/baidu/android/a/a/b;->a()Ljava/util/Map;

    move-result-object v1

    const-string v4, "Cache-Control"

    const-string v5, "no-cache"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " && "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    const/16 v0, 0xc8

    invoke-virtual {p3, v0}, Lcom/baidu/android/a/a/b;->a(I)V

    goto/16 :goto_2c

    :cond_16e
    :try_start_16e
    const-string v1, "other"

    iput-object v1, v4, Lcom/baidu/android/pushservice/f/c;->c:Ljava/lang/String;
    :try_end_172
    .catch Lorg/json/JSONException; {:try_start_16e .. :try_end_172} :catch_173

    goto :goto_11d

    :catch_173
    move-exception v1

    goto :goto_129

    :cond_175
    move v0, v2

    goto/16 :goto_1f
.end method
