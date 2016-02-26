.class Lcom/baidu/frontia/module/deeplink/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/frontia/module/deeplink/AccessWifi;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/module/deeplink/AccessWifi;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/a;->a:Lcom/baidu/frontia/module/deeplink/AccessWifi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x7530

    :try_start_2
    invoke-static {v0, v1}, Lcom/baidu/frontia/module/deeplink/a;->sleep(J)V

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/a;->a:Lcom/baidu/frontia/module/deeplink/AccessWifi;

    iget-object v0, v0, Lcom/baidu/frontia/module/deeplink/AccessWifi;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/i;->a(Landroid/content/Context;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method
