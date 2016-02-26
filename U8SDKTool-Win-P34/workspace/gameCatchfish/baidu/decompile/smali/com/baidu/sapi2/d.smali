.class public final Lcom/baidu/sapi2/d;
.super Ljava/lang/Object;
.source "SapiContext.java"


# static fields
.field private static final a:I = 0x5

.field private static final b:Ljava/lang/String; = "app_version_code"

.field private static final c:Ljava/lang/String; = "sapi_version"

.field private static final d:Ljava/lang/String; = "login_share_strategy"

.field private static final e:Ljava/lang/String; = "current_account"

.field private static final f:Ljava/lang/String; = "share_accounts"

.field private static final g:Ljava/lang/String; = "login_accounts"

.field private static final h:Ljava/lang/String; = "first_install"

.field private static final i:Ljava/lang/String; = "login_status_changed"

.field private static final j:Ljava/lang/String; = "sapi_options"

.field private static final k:Ljava/lang/String; = "relogin_credentials"

.field private static final l:Ljava/lang/String; = "cuidtoken"

.field private static final m:Ljava/lang/String; = "device_token"

.field private static final n:Ljava/lang/String; = "device_login_available"

.field private static final o:Ljava/lang/String; = "hosts_hijacked"

.field private static final p:Ljava/lang/String; = "stat_items"

.field private static final q:Ljava/lang/String; = "sync_token"

.field private static final r:Ljava/lang/String; = "sync_token_expired"

.field private static final s:Ljava/lang/String; = "time_offset_seconds"

.field private static final t:Ljava/lang/String; = "device_info_read_times"

.field private static w:Lcom/baidu/sapi2/d;


# instance fields
.field private u:Landroid/content/SharedPreferences;

.field private v:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/baidu/sapi2/d;->v:Landroid/content/Context;

    .line 89
    const-string v0, "sapi_system"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/sapi2/d;
    .registers 4

    .prologue
    .line 79
    const-class v1, Lcom/baidu/sapi2/d;

    monitor-enter v1

    .line 80
    :try_start_3
    sget-object v0, Lcom/baidu/sapi2/d;->w:Lcom/baidu/sapi2/d;

    if-nez v0, :cond_12

    .line 81
    new-instance v0, Lcom/baidu/sapi2/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/sapi2/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/d;->w:Lcom/baidu/sapi2/d;

    .line 83
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 84
    sget-object v0, Lcom/baidu/sapi2/d;->w:Lcom/baidu/sapi2/d;

    return-object v0

    .line 83
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    .line 102
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    :goto_13
    return-void

    .line 104
    :cond_14
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    .line 110
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :goto_13
    return-void

    .line 112
    :cond_14
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    .line 94
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    :goto_13
    return-void

    .line 96
    :cond_14
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_14

    .line 118
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    :goto_13
    return-void

    .line 120
    :cond_14
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_13
.end method

.method private a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-static {p1}, Lcom/baidu/sapi2/SapiAccount;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 364
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_f

    .line 365
    const-string v1, "share_accounts"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_f
    return-void
.end method

.method private b(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-static {p1}, Lcom/baidu/sapi2/SapiAccount;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 372
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_f

    .line 373
    const-string v1, "login_accounts"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_f
    return-void
.end method

.method private b(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/sapi2/d;->u:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private z()V
    .registers 3

    .prologue
    .line 354
    const-string v0, "login_status_changed"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Z)V

    .line 355
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    const-string v0, "device_token"

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .end local p1    # "elements":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_17
    return-object p1
.end method

.method public a(I)V
    .registers 3
    .param p1, "timeOffsetSeconds"    # I

    .prologue
    .line 583
    const-string v0, "time_offset_seconds"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;I)V

    .line 584
    return-void
.end method

.method public a(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 5
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 181
    if-nez p1, :cond_a

    .line 182
    const-string v1, "current_account"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_9
    :goto_9
    return-void

    .line 186
    :cond_a
    invoke-virtual {p1}, Lcom/baidu/sapi2/SapiAccount;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 187
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_9

    .line 188
    const-string v1, "current_account"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->h()Z

    move-result v1

    if-nez v1, :cond_9

    .line 191
    invoke-direct {p0}, Lcom/baidu/sapi2/d;->z()V

    goto :goto_9
.end method

.method public a(Lcom/baidu/sapi2/b;)V
    .registers 4
    .param p1, "options"    # Lcom/baidu/sapi2/b;

    .prologue
    .line 391
    if-eqz p1, :cond_b

    .line 392
    const-string v0, "sapi_options"

    invoke-virtual {p1}, Lcom/baidu/sapi2/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_b
    return-void
.end method

.method public a(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)V
    .registers 4
    .param p1, "strategy"    # Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .prologue
    .line 169
    if-eqz p1, :cond_b

    .line 170
    const-string v0, "login_share_strategy"

    invoke-virtual {p1}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_b
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "device_token"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    .registers 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "credentials"    # Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    .prologue
    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    if-eqz p2, :cond_28

    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 432
    :cond_28
    :goto_28
    return-void

    .line 421
    :cond_29
    iget-object v2, p2, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/baidu/sapi2/d;->d(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v1

    .line 423
    .local v1, "obj":Lorg/json/JSONObject;
    if-nez v1, :cond_39

    .line 424
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "obj":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 427
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :cond_39
    :try_start_39
    invoke-virtual {p2}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v2, "relogin_credentials"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_49} :catch_4a

    goto :goto_28

    .line 429
    :catch_4a
    move-exception v0

    .line 430
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 471
    if-nez p2, :cond_c

    .line 472
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 475
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->p()Ljava/util/Map;

    move-result-object v3

    .line 476
    .local v3, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 478
    .local v4, "obj":Lorg/json/JSONObject;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 479
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_40} :catch_41

    goto :goto_20

    .line 482
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_41
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 486
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_45
    :goto_45
    return-void

    .line 481
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_46
    :try_start_46
    const-string v5, "stat_items"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4f} :catch_41

    goto :goto_45
.end method

.method public a(Z)V
    .registers 3
    .param p1, "supportDeviceLogin"    # Z

    .prologue
    .line 153
    const-string v0, "device_login_available"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public b(I)V
    .registers 3
    .param p1, "versionCode"    # I

    .prologue
    .line 601
    const-string v0, "app_version_code"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;I)V

    .line 602
    return-void
.end method

.method public b(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 4
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 220
    if-nez p1, :cond_3

    .line 232
    :goto_2
    return-void

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->e()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 226
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_10
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/baidu/sapi2/d;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/d;->a(Ljava/util/List;)V

    goto :goto_2

    .line 228
    :cond_19
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public b(Ljava/lang/String;)V
    .registers 3
    .param p1, "sapiVersion"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "sapi_version"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public b(Z)V
    .registers 3
    .param p1, "hostsHijacked"    # Z

    .prologue
    .line 161
    const-string v0, "hosts_hijacked"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 149
    const-string v0, "device_login_available"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .registers 6
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->n()Lorg/json/JSONObject;

    move-result-object v1

    .line 437
    .local v1, "credentialsJSON":Lorg/json/JSONObject;
    if-eqz v1, :cond_17

    .line 438
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 439
    .local v2, "obj":Lorg/json/JSONObject;
    if-eqz v2, :cond_17

    .line 440
    invoke-static {v2}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    move-result-object v0

    .line 441
    .local v0, "credentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->o()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    .line 445
    .end local v0    # "credentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    goto :goto_16
.end method

.method public c(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 4
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 241
    if-nez p1, :cond_3

    .line 252
    :goto_2
    return-void

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->f()Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 247
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_10
    invoke-direct {p0, v0}, Lcom/baidu/sapi2/d;->b(Ljava/util/List;)V

    goto :goto_2

    .line 249
    :cond_14
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method public c(Z)V
    .registers 3
    .param p1, "expired"    # Z

    .prologue
    .line 574
    const-string v0, "sync_token_expired"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Z)V

    .line 575
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 157
    const-string v0, "hosts_hijacked"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/baidu/sapi2/SapiAccount;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 203
    const-string v2, "current_account"

    invoke-direct {p0, v2}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 205
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "current_account"

    invoke-direct {p0, v3}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/baidu/sapi2/SapiAccount;->fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1b} :catch_1d

    move-result-object v1

    .line 210
    :cond_1c
    :goto_1c
    return-object v1

    .line 206
    :catch_1d
    move-exception v0

    .line 207
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1c
.end method

.method public d(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 4
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 261
    if-nez p1, :cond_3

    .line 270
    :cond_2
    :goto_2
    return-void

    .line 265
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->e()Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0, v0}, Lcom/baidu/sapi2/d;->a(Ljava/util/List;)V

    goto :goto_2
.end method

.method d(Ljava/lang/String;)V
    .registers 3
    .param p1, "ubi"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string v0, "cuidtoken"

    invoke-direct {p0, v0, p1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public e()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    const-string v1, "share_accounts"

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 308
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "share_accounts"

    invoke-direct {p0, v2}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/sapi2/SapiAccount;->fromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/baidu/sapi2/d;->a(Ljava/util/List;I)Ljava/util/List;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1f} :catch_21

    move-result-object v1

    .line 314
    :goto_20
    return-object v1

    .line 310
    :catch_21
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_20

    .line 314
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_20
.end method

.method public e(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 5
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 279
    if-nez p1, :cond_3

    .line 297
    :cond_2
    :goto_2
    return-void

    .line 284
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 288
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/d;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 289
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/sapi2/share/b;->b(Lcom/baidu/sapi2/SapiAccount;)V

    .line 292
    :cond_2a
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->f()Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 295
    invoke-direct {p0, v0}, Lcom/baidu/sapi2/d;->b(Ljava/util/List;)V

    goto :goto_2
.end method

.method public e(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 492
    :try_start_6
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->p()Ljava/util/Map;

    move-result-object v1

    .line 493
    .local v1, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 494
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_13
    const-string v2, "stat_items"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_21} :catch_22

    .line 501
    .end local v1    # "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_21
    :goto_21
    return-void

    .line 497
    :catch_22
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public f()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    const-string v1, "login_accounts"

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 326
    :try_start_c
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "login_accounts"

    invoke-direct {p0, v2}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/sapi2/SapiAccount;->fromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1c

    move-result-object v1

    .line 331
    :goto_1b
    return-object v1

    .line 327
    :catch_1c
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1b
.end method

.method public f(Ljava/lang/String;)V
    .registers 4
    .param p1, "syncToken"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 538
    iget-object v1, p0, Lcom/baidu/sapi2/d;->v:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "cipher":Ljava/lang/String;
    const-string v1, "sync_token"

    invoke-direct {p0, v1, v0}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .end local v0    # "cipher":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method public g()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    const-string v2, "first_install"

    invoke-direct {p0, v2, v0}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 342
    const-string v2, "first_install"

    invoke-direct {p0, v2, v1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Z)V

    .line 345
    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 350
    const-string v0, "login_status_changed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()V
    .registers 3

    .prologue
    .line 358
    const-string v0, "login_status_changed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Z)V

    .line 359
    return-void
.end method

.method public j()Lcom/baidu/sapi2/b;
    .registers 3

    .prologue
    .line 379
    const-string v1, "sapi_options"

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "options":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 382
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/b;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_14} :catch_16

    move-result-object v1

    .line 386
    :goto_15
    return-object v1

    .line 383
    :catch_16
    move-exception v1

    .line 386
    :cond_17
    new-instance v1, Lcom/baidu/sapi2/b;

    invoke-direct {v1}, Lcom/baidu/sapi2/b;-><init>()V

    goto :goto_15
.end method

.method public k()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->j()Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->j()Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->j()Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 450
    const-string v1, "relogin_credentials"

    invoke-direct {p0, v1}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "credentials":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 453
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_12

    .line 457
    :goto_11
    return-object v1

    .line 454
    :catch_12
    move-exception v1

    .line 457
    :cond_13
    const/4 v1, 0x0

    goto :goto_11
.end method

.method o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 465
    const-string v0, "cuidtoken"

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 507
    .local v7, "items":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v11, "stat_items"

    invoke-direct {p0, v11}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 508
    .local v9, "itemsJSON":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_59

    .line 510
    :try_start_11
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 511
    .local v10, "itemsObj":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 512
    .local v8, "itemsIterator":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_59

    .line 513
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 514
    .local v6, "itemName":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 515
    .local v3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 516
    .local v5, "extrasObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_5a

    .line 517
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 518
    .local v4, "extrasIterator":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5a

    .line 519
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 520
    .local v1, "extraName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "extraValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_35

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_35

    .line 522
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_54} :catch_55

    goto :goto_35

    .line 528
    .end local v1    # "extraName":Ljava/lang/String;
    .end local v2    # "extraValue":Ljava/lang/String;
    .end local v3    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "extrasIterator":Ljava/util/Iterator;
    .end local v5    # "extrasObj":Lorg/json/JSONObject;
    .end local v6    # "itemName":Ljava/lang/String;
    .end local v8    # "itemsIterator":Ljava/util/Iterator;
    .end local v10    # "itemsObj":Lorg/json/JSONObject;
    :catch_55
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 532
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_59
    return-object v7

    .line 526
    .restart local v3    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "extrasObj":Lorg/json/JSONObject;
    .restart local v6    # "itemName":Ljava/lang/String;
    .restart local v8    # "itemsIterator":Ljava/util/Iterator;
    .restart local v10    # "itemsObj":Lorg/json/JSONObject;
    :cond_5a
    :try_start_5a
    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_55

    goto :goto_1a
.end method

.method public q()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 545
    const-string v3, "sync_token"

    invoke-direct {p0, v3}, Lcom/baidu/sapi2/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "cipher":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 547
    iget-object v3, p0, Lcom/baidu/sapi2/d;->v:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "plain":Ljava/lang/String;
    :try_start_12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_18

    .line 554
    .end local v2    # "plain":Ljava/lang/String;
    :goto_17
    return-object v3

    .line 550
    .restart local v2    # "plain":Ljava/lang/String;
    :catch_18
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 554
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "plain":Ljava/lang/String;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->q()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public s()Ljava/lang/String;
    .registers 3

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->q()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "seed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public t()Ljava/lang/String;
    .registers 3

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->q()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->q()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "pubkey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public u()Z
    .registers 3

    .prologue
    .line 579
    const-string v0, "sync_token_expired"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public v()I
    .registers 3

    .prologue
    .line 587
    const-string v0, "time_offset_seconds"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public w()J
    .registers 5

    .prologue
    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/baidu/sapi2/d;->v()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public x()I
    .registers 3

    .prologue
    .line 596
    const-string v0, "app_version_code"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public y()J
    .registers 7

    .prologue
    .line 606
    const-string v2, "device_info_read_times"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 607
    .local v0, "usedTimes":J
    const-string v2, "device_info_read_times"

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;J)V

    .line 608
    return-wide v0
.end method
