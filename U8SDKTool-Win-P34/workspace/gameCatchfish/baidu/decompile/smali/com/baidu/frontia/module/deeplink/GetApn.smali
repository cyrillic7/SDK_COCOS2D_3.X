.class public Lcom/baidu/frontia/module/deeplink/GetApn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/util/NoProGuard;
.implements Lcom/baidu/frontia/module/deeplink/d;


# static fields
.field public static final APN_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static final DEBUG:Z = false

.field public static final PKGNAME_PREFIX:Ljava/lang/String; = "com.baidu.searchbox"

.field private static final TAG:Ljava/lang/String; = "GetApn"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/GetApn;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    const-string v0, "callback"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Lcom/baidu/frontia/module/deeplink/g;->a()Lcom/baidu/frontia/module/deeplink/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/g;->b()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/frontia/module/deeplink/GetApn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/GetApn;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/GetApn;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_52

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_52

    array-length v7, v6

    :goto_43
    if-ge v4, v7, :cond_52

    aget-object v1, v6, v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v8

    if-eqz v8, :cond_10f

    :goto_4d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_43

    :cond_52
    if-eqz v2, :cond_10c

    const-string v1, "wifi"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10c

    const-string v1, "wifi"

    :goto_66
    if-nez v1, :cond_109

    new-instance v1, Lcom/baidu/frontia/module/deeplink/c;

    iget-object v2, p0, Lcom/baidu/frontia/module/deeplink/GetApn;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/frontia/module/deeplink/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/baidu/frontia/module/deeplink/c;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_74
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lcom/baidu/android/pushservice/f/c;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/f/c;-><init>()V

    const-string v1, "020802"

    iput-object v1, v4, Lcom/baidu/android/pushservice/f/c;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/android/pushservice/f/c;->h:J

    const-string v1, "ref_id"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f8

    const-string v1, "ref_id"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/baidu/android/pushservice/f/c;->c:Ljava/lang/String;

    :goto_9a
    :try_start_9a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fd

    const-string v1, "error"

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "apn"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput v1, v4, Lcom/baidu/android/pushservice/f/c;->j:I
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_9a .. :try_end_ae} :catch_107

    :goto_ae
    const-string v1, "text/javascript"

    invoke-virtual {p2, v1}, Lcom/baidu/android/a/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/baidu/android/a/a/b;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cache-Control"

    const-string v5, "no-cache"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p2, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    const/16 v0, 0xc8

    invoke-virtual {p2, v0}, Lcom/baidu/android/a/a/b;->a(I)V

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/GetApn;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/f/t;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/c;)J

    goto/16 :goto_e

    :cond_f8
    const-string v1, "other"

    iput-object v1, v4, Lcom/baidu/android/pushservice/f/c;->c:Ljava/lang/String;

    goto :goto_9a

    :cond_fd
    :try_start_fd
    const-string v1, "error"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x1

    iput v1, v4, Lcom/baidu/android/pushservice/f/c;->j:I
    :try_end_106
    .catch Lorg/json/JSONException; {:try_start_fd .. :try_end_106} :catch_107

    goto :goto_ae

    :catch_107
    move-exception v1

    goto :goto_ae

    :cond_109
    move-object v2, v1

    goto/16 :goto_74

    :cond_10c
    move-object v1, v3

    goto/16 :goto_66

    :cond_10f
    move-object v1, v2

    goto/16 :goto_4d
.end method
