.class Lcom/xiaomi/gamecenter/sdk/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/ag;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ag;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ah;->c:Lcom/xiaomi/gamecenter/sdk/ag;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ah;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/ah;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ah;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setProductCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpOrderId(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCount(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ah;->a:Landroid/app/Activity;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ai;

    invoke-direct {v3, p0}, Lcom/xiaomi/gamecenter/sdk/ai;-><init>(Lcom/xiaomi/gamecenter/sdk/ah;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miUniPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method
