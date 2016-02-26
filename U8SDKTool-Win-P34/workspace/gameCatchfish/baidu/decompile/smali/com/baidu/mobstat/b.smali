.class Lcom/baidu/mobstat/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static q:Lorg/json/JSONObject;

.field private static w:Lcom/baidu/mobstat/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private r:Lorg/json/JSONArray;

.field private s:Lorg/json/JSONArray;

.field private t:Lorg/json/JSONArray;

.field private u:Lorg/json/JSONArray;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Android"

    sput-object v0, Lcom/baidu/mobstat/b;->a:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    new-instance v0, Lcom/baidu/mobstat/b;

    invoke-direct {v0}, Lcom/baidu/mobstat/b;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/b;->w:Lcom/baidu/mobstat/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/b;->d:I

    iput-object v2, p0, Lcom/baidu/mobstat/b;->i:Ljava/lang/String;

    iput v1, p0, Lcom/baidu/mobstat/b;->p:I

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->t:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    iput-boolean v1, p0, Lcom/baidu/mobstat/b;->v:Z

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/b;
    .registers 1

    sget-object v0, Lcom/baidu/mobstat/b;->w:Lcom/baidu/mobstat/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "000000000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p2}, Lcom/baidu/mobstat/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    :cond_17
    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imei=null,mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-object p1
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mobstat/b;->v:Z

    return-void
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/b;->v:Z

    return v0
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .registers 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "t"

    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "c"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_14

    :goto_f
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/baidu/mobstat/b;->c(Lorg/json/JSONObject;Z)V

    return-void

    :catch_14
    move-exception v0

    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/baidu/mobstat/b;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobstat/b;->b:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/mobstat/b;->k:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_c6

    :try_start_27
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mobstat/b;->f:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/baidu/mobstat/b;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/b;->f:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_c9
    .catchall {:try_start_27 .. :try_end_35} :catchall_c6

    :goto_35
    :try_start_35
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->j:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_cf
    .catchall {:try_start_35 .. :try_end_3b} :catchall_c6

    :goto_3b
    :try_start_3b
    invoke-static {p1}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/b;->g:I

    invoke-static {p1}, Lcom/baidu/mobstat/q;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/b;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    const-string v0, "stat"

    const-string v1, "Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/baidu/mobstat/b;->g:I

    iget v1, p0, Lcom/baidu/mobstat/b;->h:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/b;->g:I

    iget v0, p0, Lcom/baidu/mobstat/b;->g:I

    iget v1, p0, Lcom/baidu/mobstat/b;->h:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/b;->h:I

    iget v0, p0, Lcom/baidu/mobstat/b;->g:I

    iget v1, p0, Lcom/baidu/mobstat/b;->h:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/b;->g:I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_70} :catch_d5
    .catchall {:try_start_3b .. :try_end_70} :catchall_c6

    :cond_70
    :goto_70
    :try_start_70
    iget-object v0, p0, Lcom/baidu/mobstat/b;->i:Ljava/lang/String;

    if-nez v0, :cond_7c

    const-string v0, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->i:Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7c} :catch_da
    .catchall {:try_start_70 .. :try_end_7c} :catchall_c6

    :cond_7c
    :goto_7c
    :try_start_7c
    iget-object v0, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;

    if-nez v0, :cond_88

    const-string v0, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;
    :try_end_88
    .catchall {:try_start_7c .. :try_end_88} :catchall_c6

    :cond_88
    :try_start_88
    invoke-static {p1}, Lcom/baidu/mobstat/q;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/b;->d:I

    invoke-static {p1}, Lcom/baidu/mobstat/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->e:Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_94} :catch_df
    .catchall {:try_start_88 .. :try_end_94} :catchall_c6

    :goto_94
    :try_start_94
    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string v0, "0_0_0"

    iput-object v0, p0, Lcom/baidu/mobstat/b;->l:Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_ac} :catch_eb
    .catchall {:try_start_94 .. :try_end_ac} :catchall_c6

    :goto_ac
    :try_start_ac
    invoke-static {p1}, Lcom/baidu/mobstat/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->m:Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b2} :catch_f0
    .catchall {:try_start_ac .. :try_end_b2} :catchall_c6

    :goto_b2
    :try_start_b2
    invoke-static {p1}, Lcom/baidu/mobstat/q;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->n:Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b8} :catch_f5
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_c6

    :goto_b8
    :try_start_b8
    invoke-static {p1}, Lcom/baidu/mobstat/q;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->o:Ljava/lang/String;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_be} :catch_c0
    .catchall {:try_start_b8 .. :try_end_be} :catchall_c6

    goto/16 :goto_6

    :catch_c0
    move-exception v0

    :try_start_c1
    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c6

    goto/16 :goto_6

    :catchall_c6
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_c9
    move-exception v1

    :try_start_ca
    invoke-static {v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_35

    :catch_cf
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    :catch_d5
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto :goto_70

    :catch_da
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto :goto_7c

    :catch_df
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I
    :try_end_e3
    .catchall {:try_start_ca .. :try_end_e3} :catchall_c6

    goto :goto_94

    :cond_e4
    :try_start_e4
    invoke-static {p1}, Lcom/baidu/mobstat/q;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/b;->l:Ljava/lang/String;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_ea} :catch_eb
    .catchall {:try_start_e4 .. :try_end_ea} :catchall_c6

    goto :goto_ac

    :catch_eb
    move-exception v0

    :try_start_ec
    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto :goto_ac

    :catch_f0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto :goto_b2

    :catch_f5
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I
    :try_end_f9
    .catchall {:try_start_ec .. :try_end_f9} :catchall_c6

    goto :goto_b8
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 13

    const/4 v1, 0x0

    const-string v0, "stat"

    const-string v2, "sendLogData() begin."

    invoke-static {v0, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_29

    :try_start_a
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "stat"

    const-string v1, "sendLogData() does not send because of only_wifi setting"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    const-string v0, "stat"

    const-string v1, "sendLogData exception when get wifimanager"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    monitor-enter v2

    :try_start_31
    sget-object v3, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v4, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v3, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v4, "ss"

    invoke-static {}, Lcom/baidu/mobstat/m;->a()Lcom/baidu/mobstat/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mobstat/m;->c()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "he"

    sget-object v4, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_52} :catch_d5
    .catchall {:try_start_31 .. :try_end_52} :catchall_de

    :try_start_52
    iget-object v3, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    monitor-enter v3
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_de

    :try_start_55
    const-string v4, "pr"

    iget-object v5, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_5c} :catch_e1
    .catchall {:try_start_55 .. :try_end_5c} :catchall_118

    :try_start_5c
    iget-object v4, p0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    monitor-enter v4
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_118

    :try_start_5f
    const-string v5, "ev"

    iget-object v6, p0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_66} :catch_ef
    .catchall {:try_start_5f .. :try_end_66} :catchall_115

    :try_start_66
    iget-object v5, p0, Lcom/baidu/mobstat/b;->t:Lorg/json/JSONArray;

    monitor-enter v5
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_115

    :try_start_69
    iget-object v6, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    monitor-enter v6
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_112

    :try_start_6c
    const-string v7, "ex"

    iget-object v8, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_73} :catch_fa
    .catchall {:try_start_6c .. :try_end_73} :catchall_10f

    :try_start_73
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "stat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---Send Data Is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_10f

    :try_start_8f
    const-string v7, "http://hmma.baidu.com/app.gif"

    const v8, 0xc350

    const v9, 0xc350

    invoke-static {p1, v7, v0, v8, v9}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9a} :catch_107
    .catchall {:try_start_8f .. :try_end_9a} :catchall_10f

    const/4 v0, 0x1

    :goto_9b
    if-eqz v0, :cond_c7

    const/4 v0, 0x0

    :try_start_9e
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/b;->a(Z)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/m;->a()Lcom/baidu/mobstat/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/m;->b()V

    invoke-static {}, Lcom/baidu/mobstat/g;->a()Lcom/baidu/mobstat/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/g;->d(Landroid/content/Context;)V

    :cond_c7
    monitor-exit v6
    :try_end_c8
    .catchall {:try_start_9e .. :try_end_c8} :catchall_10f

    :try_start_c8
    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_112

    :try_start_c9
    monitor-exit v4
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_115

    :try_start_ca
    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_118

    :try_start_cb
    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_de

    const-string v0, "stat"

    const-string v1, "sendLogData() end."

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :catch_d5
    move-exception v0

    :try_start_d6
    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    goto/16 :goto_1f

    :catchall_de
    move-exception v0

    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_d6 .. :try_end_e0} :catchall_de

    throw v0

    :catch_e1
    move-exception v0

    :try_start_e2
    const-string v1, "stat"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_118

    :try_start_ec
    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_de

    goto/16 :goto_1f

    :catch_ef
    move-exception v0

    :try_start_f0
    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v4
    :try_end_f6
    .catchall {:try_start_f0 .. :try_end_f6} :catchall_115

    :try_start_f6
    monitor-exit v3
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_118

    :try_start_f7
    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_de

    goto/16 :goto_1f

    :catch_fa
    move-exception v0

    :try_start_fb
    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v6
    :try_end_101
    .catchall {:try_start_fb .. :try_end_101} :catchall_10f

    :try_start_101
    monitor-exit v5
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_112

    :try_start_102
    monitor-exit v4
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_115

    :try_start_103
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_118

    :try_start_104
    monitor-exit v2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_de

    goto/16 :goto_1f

    :catch_107
    move-exception v0

    :try_start_108
    const-string v7, "stat"

    invoke-static {v7, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_9b

    :catchall_10f
    move-exception v0

    monitor-exit v6
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_10f

    :try_start_111
    throw v0

    :catchall_112
    move-exception v0

    monitor-exit v5
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_112

    :try_start_114
    throw v0

    :catchall_115
    move-exception v0

    monitor-exit v4
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_115

    :try_start_117
    throw v0

    :catchall_118
    move-exception v0

    monitor-exit v3
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_118

    :try_start_11a
    throw v0
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_de
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "i"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "t"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/b;->b(Lorg/json/JSONObject;Z)V

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .registers 7

    if-eqz p1, :cond_34

    if-nez p2, :cond_34

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "stat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "putSession:addSize is:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/a/b;->a([Ljava/lang/Object;)I

    iget v1, p0, Lcom/baidu/mobstat/b;->p:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_34

    const-string v0, "stat"

    const-string v1, "putSession: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void

    :cond_34
    iget-object v1, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    monitor-enter v1

    :try_start_37
    iget-object v0, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_44

    move-result v0

    :try_start_3d
    iget-object v2, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_42} :catch_47
    .catchall {:try_start_3d .. :try_end_42} :catchall_44

    :goto_42
    :try_start_42
    monitor-exit v1

    goto :goto_33

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw v0

    :catch_47
    move-exception v0

    :try_start_48
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_44

    goto :goto_42
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f5

    move-result v0

    if-lez v0, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "o"

    sget-object v0, Lcom/baidu/mobstat/b;->a:Ljava/lang/String;

    if-nez v0, :cond_f8

    const-string v0, ""

    :goto_15
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "s"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->b:Ljava/lang/String;

    if-nez v0, :cond_fc

    const-string v0, ""

    :goto_22
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "k"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;

    if-nez v0, :cond_100

    const-string v0, ""

    :goto_2f
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v1, "v"

    const-string v2, "2.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v1, "a"

    iget v2, p0, Lcom/baidu/mobstat/b;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "n"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->e:Ljava/lang/String;

    if-nez v0, :cond_104

    const-string v0, ""

    :goto_4e
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "d"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->f:Ljava/lang/String;

    if-nez v0, :cond_108

    const-string v0, ""

    :goto_5b
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v1, "w"

    iget v2, p0, Lcom/baidu/mobstat/b;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v1, "h"

    iget v2, p0, Lcom/baidu/mobstat/b;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "c"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->i:Ljava/lang/String;

    if-nez v0, :cond_10c

    const-string v0, ""

    :goto_7a
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "op"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->j:Ljava/lang/String;

    if-nez v0, :cond_110

    const-string v0, ""

    :goto_87
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "m"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->k:Ljava/lang/String;

    if-nez v0, :cond_114

    const-string v0, ""

    :goto_94
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v1, "cl"

    iget-object v2, p0, Lcom/baidu/mobstat/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "gl"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->m:Ljava/lang/String;

    if-nez v0, :cond_118

    const-string v0, ""

    :goto_aa
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "wl"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->n:Ljava/lang/String;

    if-nez v0, :cond_11b

    const-string v0, ""

    :goto_b7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v2, "l"

    iget-object v0, p0, Lcom/baidu/mobstat/b;->o:Ljava/lang/String;

    if-nez v0, :cond_11e

    const-string v0, ""

    :goto_c4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    const-string v1, "sq"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "stat"

    sget-object v1, Lcom/baidu/mobstat/b;->q:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_e5} :catch_e7
    .catchall {:try_start_b .. :try_end_e5} :catchall_f5

    goto/16 :goto_9

    :catch_e7
    move-exception v0

    :try_start_e8
    const-string v0, "header ini error"

    const-string v1, "stat"

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f5
    .catchall {:try_start_e8 .. :try_end_f5} :catchall_f5

    :catchall_f5
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f8
    :try_start_f8
    sget-object v0, Lcom/baidu/mobstat/b;->a:Ljava/lang/String;

    goto/16 :goto_15

    :cond_fc
    iget-object v0, p0, Lcom/baidu/mobstat/b;->b:Ljava/lang/String;

    goto/16 :goto_22

    :cond_100
    iget-object v0, p0, Lcom/baidu/mobstat/b;->c:Ljava/lang/String;

    goto/16 :goto_2f

    :cond_104
    iget-object v0, p0, Lcom/baidu/mobstat/b;->e:Ljava/lang/String;

    goto/16 :goto_4e

    :cond_108
    iget-object v0, p0, Lcom/baidu/mobstat/b;->f:Ljava/lang/String;

    goto/16 :goto_5b

    :cond_10c
    iget-object v0, p0, Lcom/baidu/mobstat/b;->i:Ljava/lang/String;

    goto/16 :goto_7a

    :cond_110
    iget-object v0, p0, Lcom/baidu/mobstat/b;->j:Ljava/lang/String;

    goto/16 :goto_87

    :cond_114
    iget-object v0, p0, Lcom/baidu/mobstat/b;->k:Ljava/lang/String;

    goto/16 :goto_94

    :cond_118
    iget-object v0, p0, Lcom/baidu/mobstat/b;->m:Ljava/lang/String;

    goto :goto_aa

    :cond_11b
    iget-object v0, p0, Lcom/baidu/mobstat/b;->n:Ljava/lang/String;

    goto :goto_b7

    :cond_11e
    iget-object v0, p0, Lcom/baidu/mobstat/b;->o:Ljava/lang/String;
    :try_end_120
    .catch Lorg/json/JSONException; {:try_start_f8 .. :try_end_120} :catch_e7
    .catchall {:try_start_f8 .. :try_end_120} :catchall_f5

    goto :goto_c4
.end method

.method public b(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const-string v0, "stat"

    const-string v1, "flush cache to __local_stat_cache.json"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    iget-object v2, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_10} :catch_60

    :try_start_10
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "pr"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_5d

    :try_start_21
    iget-object v2, p0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_24} :catch_60

    :try_start_24
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "ev"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_69

    :try_start_35
    iget-object v2, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_38} :catch_60

    :try_start_38
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v3, "ex"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_6c

    :goto_49
    const-string v0, "{}"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/baidu/mobstat/b;->d()Z

    move-result v1

    if-eqz v1, :cond_6f

    const-string v0, "stat"

    const-string v1, "cache.json exceed 204800B,stop flush."

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void

    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v0
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_60} :catch_60

    :catch_60
    move-exception v0

    const-string v0, "flushLogWithoutHeader() construct cache error"

    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v0
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_6c} :catch_60

    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_6f} :catch_60

    :cond_6f
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const v2, 0x32000

    if-lt v1, v2, :cond_7e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/b;->a(Z)V

    goto :goto_5c

    :cond_7e
    iput v1, p0, Lcom/baidu/mobstat/b;->p:I

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush:cacheFileSize is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mobstat/b;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "__local_stat_cache.json"

    invoke-static {v4, p1, v1, v0, v4}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5c
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/b;->i:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;Z)V
    .registers 21

    if-eqz p1, :cond_36

    if-nez p2, :cond_36

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stat"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "putEvent:eventSize is:"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/baidu/mobstat/a/b;->a([Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/mobstat/b;->p:I

    add-int/2addr v2, v3

    const v3, 0x32000

    if-le v2, v3, :cond_36

    const-string v2, "stat"

    const-string v3, "putEvent: size is full!"

    invoke-static {v2, v3}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void

    :cond_36
    :try_start_36
    const-string v2, "i"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "l"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    div-long v8, v2, v4
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_53} :catch_8a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    monitor-enter v10

    :try_start_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_bf

    move-result v5

    const/4 v3, 0x0

    move v2, v5

    :goto_62
    if-ge v3, v5, :cond_c2

    :try_start_64
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v11, "i"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "l"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "t"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/32 v16, 0x36ee80

    div-long v14, v14, v16
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_83} :catch_b8
    .catchall {:try_start_64 .. :try_end_83} :catchall_bf

    cmp-long v13, v14, v8

    if-eqz v13, :cond_91

    :cond_87
    :goto_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :catch_8a
    move-exception v2

    const-string v3, "stat"

    invoke-static {v3, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :cond_91
    :try_start_91
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_87

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_87

    const-string v11, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "c"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_aa} :catch_b8
    .catchall {:try_start_91 .. :try_end_aa} :catchall_bf

    move-result v2

    add-int/2addr v2, v11

    :try_start_ac
    const-string v11, "c"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "c"

    invoke-virtual {v4, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_b6} :catch_da
    .catchall {:try_start_ac .. :try_end_b6} :catchall_bf

    move v2, v3

    goto :goto_87

    :catch_b8
    move-exception v4

    :goto_b9
    :try_start_b9
    const-string v11, "stat"

    invoke-static {v11, v4}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_87

    :catchall_bf
    move-exception v2

    monitor-exit v10
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_bf

    throw v2

    :cond_c2
    if-ge v2, v5, :cond_c7

    :try_start_c4
    monitor-exit v10
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_bf

    goto/16 :goto_35

    :cond_c7
    :try_start_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d0
    .catch Lorg/json/JSONException; {:try_start_c7 .. :try_end_d0} :catch_d3
    .catchall {:try_start_c7 .. :try_end_d0} :catchall_bf

    :goto_d0
    :try_start_d0
    monitor-exit v10

    goto/16 :goto_35

    :catch_d3
    move-exception v2

    const-string v3, "stat"

    invoke-static {v3, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d9
    .catchall {:try_start_d0 .. :try_end_d9} :catchall_bf

    goto :goto_d0

    :catch_da
    move-exception v2

    move-object v4, v2

    move v2, v3

    goto :goto_b9
.end method

.method public c(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "stat"

    const-string v1, "LoadLastSession()"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v0, "__local_last_session.json"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "__local_last_session.json"

    invoke-static {v3, p1, v0}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "stat"

    const-string v1, "loadLastSession(): last_session.json file not found."

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_29
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-static {v3, p1, v2, v1, v3}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    const-string v0, "{}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/b;->a(Lorg/json/JSONObject;Z)V

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load last session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_32} :catch_33

    goto :goto_10

    :catch_33
    move-exception v0

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSession()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public c(Lorg/json/JSONObject;Z)V
    .registers 7

    if-eqz p1, :cond_34

    if-nez p2, :cond_34

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "stat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "putException:addSize is:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/a/b;->a([Ljava/lang/Object;)I

    iget v1, p0, Lcom/baidu/mobstat/b;->p:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_34

    const-string v0, "stat"

    const-string v1, "putException: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void

    :cond_34
    iget-object v1, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    monitor-enter v1

    :try_start_37
    iget-object v0, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_44

    move-result v0

    :try_start_3d
    iget-object v2, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_42} :catch_47
    .catchall {:try_start_3d .. :try_end_42} :catchall_44

    :goto_42
    :try_start_42
    monitor-exit v1

    goto :goto_33

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw v0

    :catch_47
    move-exception v0

    :try_start_48
    const-string v2, "stat"

    invoke-static {v2, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_44

    goto :goto_42
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/b;->r:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/baidu/mobstat/b;->s:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/baidu/mobstat/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public d(Landroid/content/Context;)V
    .registers 14

    const-wide/32 v10, 0x240c8400

    const/4 v0, 0x0

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string v1, "__local_stat_cache.json"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "__local_stat_cache.json"

    invoke-static {v0, p1, v1}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v0, "stat"

    const-string v1, "stat_cache file not found."

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_25
    const-string v2, "stat"

    const-string v3, "loadStatData, "

    invoke-static {v2, v3}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/baidu/mobstat/b;->p:I

    const-string v2, "stat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load Stat Data:cacheFileSize is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/baidu/mobstat/b;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "stat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load cache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "pr"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    :goto_75
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_ae

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_8e

    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    :cond_8e
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/baidu/mobstat/b;->a(Lorg/json/JSONObject;Z)V
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_92} :catch_93

    goto :goto_8b

    :catch_93
    move-exception v0

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load stat data error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_ae
    :try_start_ae
    const-string v1, "ev"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    :goto_b5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_d3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_ce

    :goto_cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    :cond_ce
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/baidu/mobstat/b;->b(Lorg/json/JSONObject;Z)V

    goto :goto_cb

    :cond_d3
    const-string v1, "ex"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_d9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v3, v6, v10

    if-lez v3, :cond_f2

    :goto_ef
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    :cond_f2
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/baidu/mobstat/b;->c(Lorg/json/JSONObject;Z)V
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_ae .. :try_end_f6} :catch_93

    goto :goto_ef
.end method
