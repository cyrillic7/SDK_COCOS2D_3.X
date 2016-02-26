.class public Lcom/baidu/frontia/module/deeplink/LightApi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/util/NoProGuard;
.implements Lcom/baidu/frontia/module/deeplink/d;


# static fields
.field private static final DEFAULT_LIGHT_API_TIMEOUT:I = 0x2710

.field private static final KEY_LIGHT_ADD_SHORTCUT:Ljava/lang/String; = "addShortcut"

.field private static final KEY_LIGHT_APIKEY:Ljava/lang/String; = "apikey"

.field private static final KEY_LIGHT_APPID:Ljava/lang/String; = "appid"

.field private static final KEY_LIGHT_APPIDS:Ljava/lang/String; = "appids"

.field private static final KEY_LIGHT_CHANNEL:Ljava/lang/String; = "channel"

.field private static final KEY_LIGHT_CSRFTOKEN:Ljava/lang/String; = "csrftoken"

.field private static final KEY_LIGHT_LIMIT:Ljava/lang/String; = "limit"

.field private static final KEY_LIGHT_MSGIDS:Ljava/lang/String; = "msgids"

.field private static final KEY_LIGHT_MSG_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_LIGHT_NONCE:Ljava/lang/String; = "nonce"

.field private static final KEY_LIGHT_START:Ljava/lang/String; = "start"

.field private static final KEY_LIGHT_TAG:Ljava/lang/String; = "tag"

.field private static final KEY_LIGHT_UNREAD_ONLY:Ljava/lang/String; = "unreadOnly"

.field private static final TAG:Ljava/lang/String; = "LightApi"


# instance fields
.field private mCallback:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResponse:Lcom/baidu/android/a/a/b;

.field public myLock:Ljava/lang/Object;

.field public resFlag:Z

.field public waitFlag:Z

.field public waitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->myLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->waitLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->resFlag:Z

    iput-boolean v1, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->waitFlag:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/baidu/android/a/a/a;Lcom/baidu/android/a/a/b;)V
    .registers 23

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/frontia/module/deeplink/LightApi;->mResponse:Lcom/baidu/android/a/a/b;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/android/a/a/a;->a()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    const-string v2, "callback"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->mCallback:Ljava/lang/String;

    const/16 v2, 0x2710

    :try_start_22
    const-string v3, "timeout"

    const/16 v4, 0x2710

    invoke-static {v8, v3, v4}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_29} :catch_fc

    move-result v2

    move/from16 v19, v2

    :goto_2c
    invoke-static {}, Lcom/baidu/frontia/module/deeplink/g;->a()Lcom/baidu/frontia/module/deeplink/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/frontia/module/deeplink/g;->b()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_13

    new-instance v9, Lcom/baidu/android/pushservice/e/c;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/baidu/android/pushservice/e/c;-><init>(Lcom/baidu/frontia/module/deeplink/LightApi;)V

    const-string v2, "URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/baidu/android/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_61

    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_61
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v2, "apikey"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/android/pushservice/e/e;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/e/e;

    move-result-object v2

    if-eqz v2, :cond_13

    const-string v5, "Referer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/baidu/android/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "bindLight"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_112

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "nonce"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "addShortcut"

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, "channel"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_108

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_108

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_108

    const/4 v10, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_66b

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    :goto_c4
    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/android/pushservice/e/a;I)V

    :goto_c8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->waitLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_cd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->waitFlag:Z

    if-nez v2, :cond_dd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->waitLock:Ljava/lang/Object;

    move/from16 v0, v19

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_dd
    .catch Ljava/lang/InterruptedException; {:try_start_cd .. :try_end_dd} :catch_643
    .catchall {:try_start_cd .. :try_end_dd} :catchall_662

    :cond_dd
    :goto_dd
    :try_start_dd
    monitor-exit v3
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_662

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->myLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->resFlag:Z

    if-nez v2, :cond_f6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->resFlag:Z

    const/4 v2, 0x3

    const-string v4, "LocalServer API Handling Timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    :cond_f6
    monitor-exit v3

    goto/16 :goto_13

    :catchall_f9
    move-exception v2

    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_e3 .. :try_end_fb} :catchall_f9

    throw v2

    :catch_fc
    move-exception v3

    const-string v3, "LightApi"

    const-string v4, "Timeout parse fail, use default"

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v2

    goto/16 :goto_2c

    :cond_108
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_112
    const-string v5, "unbindLight"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14c

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "nonce"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_142

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_142

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_142

    const/4 v8, 0x0

    move-object v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;Z)V

    goto :goto_c8

    :cond_142
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_14c
    const-string v5, "subscribeLight"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_193

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "channel"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "addShortcut"

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_189

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_189

    const/4 v7, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_668

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_183
    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/android/pushservice/e/a;)V

    goto/16 :goto_c8

    :cond_189
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_193
    const-string v5, "unsubscribeLight"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c6

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "channel"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1bc

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1bc

    invoke-virtual {v2, v3, v4, v5, v9}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;)V

    goto/16 :goto_c8

    :cond_1bc
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_1c6
    const-string v5, "subscribeService"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21c

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v4, "nonce"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v4, "tag"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v4, "channel"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_212

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_212

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_212

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_212

    const/16 v18, 0x0

    move-object v10, v2

    move-object v11, v3

    move-object v15, v6

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v18}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;I)V

    goto/16 :goto_c8

    :cond_212
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_21c
    const-string v5, "unsubscribeService"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_268

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v4, "nonce"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v4, "tag"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25e

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25e

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25e

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25e

    move-object v10, v2

    move-object v11, v3

    move-object v15, v6

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/baidu/android/pushservice/e/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;)V

    goto/16 :goto_c8

    :cond_25e
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_268
    const-string v5, "getSubscribedApps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_275

    invoke-virtual {v2, v9}, Lcom/baidu/android/pushservice/e/e;->a(Lcom/baidu/android/pushservice/e/a;)Ljava/lang/String;

    goto/16 :goto_c8

    :cond_275
    const-string v5, "getWeakSubscribedApps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29f

    :try_start_27d
    const-string v3, "start"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v3, "limit"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_294} :catch_29a

    move-result v3

    :goto_295
    invoke-virtual {v2, v9, v4, v3}, Lcom/baidu/android/pushservice/e/e;->a(Lcom/baidu/android/pushservice/e/a;II)Ljava/lang/String;

    goto/16 :goto_c8

    :catch_29a
    move-exception v3

    const/4 v4, 0x0

    const/16 v3, 0x14

    goto :goto_295

    :cond_29f
    const-string v5, "weakBindLight"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e1

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "nonce"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "channel"

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2d7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2d7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2d7

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;)V

    goto/16 :goto_c8

    :cond_2d7
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_2e1
    const-string v5, "weakSubscribeService"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_335

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v4, "nonce"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v4, "tag"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v4, "channel"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32b

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32b

    move-object v10, v2

    move-object v11, v3

    move-object v15, v6

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;)V

    goto/16 :goto_c8

    :cond_32b
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_335
    const-string v5, "blackWeakSubscibedApps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36f

    const-string v4, "csrftoken"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "nonce"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_365

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_365

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_365

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;)V

    goto/16 :goto_c8

    :cond_365
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_36f
    const-string v5, "getSubscribedAppids"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37c

    invoke-virtual {v2, v9}, Lcom/baidu/android/pushservice/e/e;->b(Lcom/baidu/android/pushservice/e/a;)Ljava/lang/String;

    goto/16 :goto_c8

    :cond_37c
    const-string v5, "getSubscribedAppinfos"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3eb

    const-string v3, "appids"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_397
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_3cc

    const/4 v3, 0x0

    :goto_39f
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3cc

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3ac
    .catch Lorg/json/JSONException; {:try_start_397 .. :try_end_3ac} :catch_3af

    add-int/lit8 v3, v3, 0x1

    goto :goto_39f

    :catch_3af
    move-exception v3

    const-string v5, "LightApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3cc
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3d7

    invoke-virtual {v2, v4, v9}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/util/ArrayList;Lcom/baidu/android/pushservice/e/a;)Ljava/lang/String;

    goto/16 :goto_c8

    :cond_3d7
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_3e1
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_3eb
    const-string v5, "getMsgs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_433

    const-string v3, "unreadOnly"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_665

    const-string v3, "false"

    move-object v5, v3

    :goto_400
    :try_start_400
    const-string v3, "appid"

    const-string v4, "0"

    invoke-static {v8, v3, v4}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    const/4 v6, 0x0

    invoke-static {v8, v4, v6}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "start"

    const/4 v7, 0x0

    invoke-static {v8, v6, v7}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "limit"

    const/16 v10, 0x32

    invoke-static {v8, v7, v10}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;IZIILcom/baidu/android/pushservice/e/a;)Ljava/lang/String;
    :try_end_426
    .catch Ljava/lang/NumberFormatException; {:try_start_400 .. :try_end_426} :catch_428

    goto/16 :goto_c8

    :catch_428
    move-exception v2

    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_433
    const-string v5, "getUnreadMsgNumber"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45a

    :try_start_43b
    const-string v3, "appid"

    const-string v4, "0"

    invoke-static {v8, v3, v4}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v8, v4, v5}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4, v3, v9}, Lcom/baidu/android/pushservice/e/e;->a(ILjava/lang/String;Lcom/baidu/android/pushservice/e/a;)I
    :try_end_44d
    .catch Ljava/lang/NumberFormatException; {:try_start_43b .. :try_end_44d} :catch_44f

    goto/16 :goto_c8

    :catch_44f
    move-exception v2

    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_45a
    const-string v5, "setMsgRead"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c9

    const-string v3, "msgids"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4bf

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_475
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_4aa

    const/4 v3, 0x0

    :goto_47d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_4aa

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48a
    .catch Lorg/json/JSONException; {:try_start_475 .. :try_end_48a} :catch_48d

    add-int/lit8 v3, v3, 0x1

    goto :goto_47d

    :catch_48d
    move-exception v3

    const-string v5, "LightApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4aa
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4b5

    invoke-virtual {v2, v4, v9}, Lcom/baidu/android/pushservice/e/e;->b(Ljava/util/ArrayList;Lcom/baidu/android/pushservice/e/a;)I

    goto/16 :goto_c8

    :cond_4b5
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_4bf
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_4c9
    const-string v5, "setAllMsgRead"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f0

    :try_start_4d1
    const-string v3, "appid"

    const-string v4, "0"

    invoke-static {v8, v3, v4}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v8, v4, v5}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4, v3, v9}, Lcom/baidu/android/pushservice/e/e;->b(ILjava/lang/String;Lcom/baidu/android/pushservice/e/a;)I
    :try_end_4e3
    .catch Ljava/lang/NumberFormatException; {:try_start_4d1 .. :try_end_4e3} :catch_4e5

    goto/16 :goto_c8

    :catch_4e5
    move-exception v2

    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_4f0
    const-string v5, "deleteMsg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55f

    const-string v3, "msgids"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_555

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_50b
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_540

    const/4 v3, 0x0

    :goto_513
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_540

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_520
    .catch Lorg/json/JSONException; {:try_start_50b .. :try_end_520} :catch_523

    add-int/lit8 v3, v3, 0x1

    goto :goto_513

    :catch_523
    move-exception v3

    const-string v5, "LightApi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_540
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_54b

    invoke-virtual {v2, v4, v9}, Lcom/baidu/android/pushservice/e/e;->c(Ljava/util/ArrayList;Lcom/baidu/android/pushservice/e/a;)I

    goto/16 :goto_c8

    :cond_54b
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_555
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_55f
    const-string v5, "deleteAllMsg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_586

    :try_start_567
    const-string v3, "appid"

    const-string v4, "0"

    invoke-static {v8, v3, v4}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v8, v4, v5}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4, v3, v9}, Lcom/baidu/android/pushservice/e/e;->c(ILjava/lang/String;Lcom/baidu/android/pushservice/e/a;)I
    :try_end_579
    .catch Ljava/lang/NumberFormatException; {:try_start_567 .. :try_end_579} :catch_57b

    goto/16 :goto_c8

    :catch_57b
    move-exception v2

    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_586
    const-string v5, "getUniqueId"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_600

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f6

    :try_start_594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/frontia/module/deeplink/LightApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/frontia/a/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/e/e;->a([BZ)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "unique_id"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V
    :try_end_5d5
    .catch Lorg/json/JSONException; {:try_start_594 .. :try_end_5d5} :catch_5d7

    goto/16 :goto_13

    :catch_5d7
    move-exception v2

    const-string v3, "LightApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c8

    :cond_5f6
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_600
    const-string v5, "isBind"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_613

    invoke-virtual {v2, v3, v9}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;)V

    goto/16 :goto_c8

    :cond_613
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_61d
    const-string v5, "isSubscribe"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_630

    invoke-virtual {v2, v3, v9}, Lcom/baidu/android/pushservice/e/e;->b(Ljava/lang/String;Lcom/baidu/android/pushservice/e/a;)V

    goto/16 :goto_c8

    :cond_630
    const/4 v2, 0x2

    const-string v3, "LocalServer API Params Wrong"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/frontia/module/deeplink/LightApi;->sendResponse(ILjava/lang/String;)V

    goto/16 :goto_13

    :cond_63a
    const-string v2, "LightApi"

    const-string v3, "None light api matchs, response none"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_643
    move-exception v2

    :try_start_644
    const-string v4, "LightApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_dd

    :catchall_662
    move-exception v2

    monitor-exit v3
    :try_end_664
    .catchall {:try_start_644 .. :try_end_664} :catchall_662

    throw v2

    :cond_665
    move-object v5, v3

    goto/16 :goto_400

    :cond_668
    move v6, v7

    goto/16 :goto_183

    :cond_66b
    move v7, v10

    goto/16 :goto_c4
.end method

.method public sendResponse(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->mCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " && "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    if-eqz p1, :cond_70

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2f
    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error_msg"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_39} :catch_75

    :goto_39
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_41
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->mResponse:Lcom/baidu/android/a/a/b;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->mResponse:Lcom/baidu/android/a/a/b;

    const-string v2, "text/javascript"

    invoke-virtual {v1, v2}, Lcom/baidu/android/a/a/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->mResponse:Lcom/baidu/android/a/a/b;

    invoke-virtual {v1}, Lcom/baidu/android/a/a/b;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->mResponse:Lcom/baidu/android/a/a/b;

    invoke-virtual {v1, v0}, Lcom/baidu/android/a/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/LightApi;->mResponse:Lcom/baidu/android/a/a/b;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/baidu/android/a/a/b;->a(I)V

    goto :goto_8

    :cond_70
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_41

    :catch_75
    move-exception v2

    goto :goto_39
.end method
