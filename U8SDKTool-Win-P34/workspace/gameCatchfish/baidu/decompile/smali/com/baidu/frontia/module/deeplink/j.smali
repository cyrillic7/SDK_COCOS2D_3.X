.class Lcom/baidu/frontia/module/deeplink/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/frontia/module/deeplink/ValidateWifi;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/module/deeplink/ValidateWifi;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/j;->a:Lcom/baidu/frontia/module/deeplink/ValidateWifi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-wide/16 v0, 0x7530

    :try_start_2
    invoke-static {v0, v1}, Lcom/baidu/frontia/module/deeplink/j;->sleep(J)V

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/j;->a:Lcom/baidu/frontia/module/deeplink/ValidateWifi;

    iget-object v0, v0, Lcom/baidu/frontia/module/deeplink/ValidateWifi;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/i;->a(Landroid/content/Context;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "ValidateWifi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " validate exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
