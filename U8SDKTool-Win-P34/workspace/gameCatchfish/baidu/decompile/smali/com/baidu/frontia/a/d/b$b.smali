.class Lcom/baidu/frontia/a/d/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static c:Lcom/baidu/frontia/a/d/b$b;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/frontia/a/d/b$b;->c:Lcom/baidu/frontia/a/d/b$b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/frontia/a/d/b$b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    :cond_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    :try_start_13
    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "os_name"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "manufacture"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "firmware"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "mem_size"

    invoke-static {}, Lcom/baidu/frontia/a/d/b;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "screen_width"

    iget-object v2, p0, Lcom/baidu/frontia/a/d/b$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/frontia/a/d/b;->a(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "screen_height"

    iget-object v2, p0, Lcom/baidu/frontia/a/d/b$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/frontia/a/d/b;->a(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "cpu_model"

    invoke-static {}, Lcom/baidu/frontia/a/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "cpu_feature"

    invoke-static {}, Lcom/baidu/frontia/a/d/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "screen_density"

    iget-object v2, p0, Lcom/baidu/frontia/a/d/b$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/frontia/a/d/b;->a(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v1, "wise_cuid"

    iget-object v2, p0, Lcom/baidu/frontia/a/d/b$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/frontia/a/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ba
    const-string v0, "pst"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_mac_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_cd
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_cd} :catch_10c

    move-result v0

    if-nez v0, :cond_12f

    :cond_d0
    :try_start_d0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_df} :catch_12a
    .catch Lorg/json/JSONException; {:try_start_d0 .. :try_end_df} :catch_10c

    move-result-object v0

    if-eqz v0, :cond_fc

    :try_start_e2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_fc

    const-string v1, "pst"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "push_mac_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_fc} :catch_12d
    .catch Lorg/json/JSONException; {:try_start_e2 .. :try_end_fc} :catch_10c

    :cond_fc
    :goto_fc
    if-eqz v0, :cond_10b

    :try_start_fe
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10b

    iget-object v1, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    const-string v2, "mac_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10b
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_10b} :catch_10c

    :cond_10b
    :goto_10b
    return-void

    :catch_10c
    move-exception v0

    const-string v1, "StatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10b

    :catch_12a
    move-exception v0

    move-object v0, v1

    goto :goto_fc

    :catch_12d
    move-exception v1

    goto :goto_fc

    :cond_12f
    move-object v0, v1

    goto :goto_fc
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/frontia/a/d/b$b;
    .registers 3

    const-class v1, Lcom/baidu/frontia/a/d/b$b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/frontia/a/d/b$b;->c:Lcom/baidu/frontia/a/d/b$b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/frontia/a/d/b$b;

    invoke-direct {v0, p0}, Lcom/baidu/frontia/a/d/b$b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/frontia/a/d/b$b;->c:Lcom/baidu/frontia/a/d/b$b;

    :cond_e
    sget-object v0, Lcom/baidu/frontia/a/d/b$b;->c:Lcom/baidu/frontia/a/d/b$b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/baidu/frontia/a/d/b$b;->b:Lorg/json/JSONObject;

    return-object v0
.end method
