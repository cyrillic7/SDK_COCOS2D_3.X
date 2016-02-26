.class public final Lcom/meizu/gamecenter/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meizu/gamecenter/sdk/MzBuyInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    .line 13
    iput-object p2, p0, Lcom/meizu/gamecenter/sdk/a;->b:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/meizu/gamecenter/sdk/a;->c:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v1, "orderId"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "cpInfo"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getCpUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "amount"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getOrderAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "createTime"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 55
    const-string v1, "productId"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "productSubject"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getProductSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "productBody"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getProductBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "productUnit"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getProductUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "buyCount"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getBuyCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v1, "perPrice"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getPerPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "signType"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getSignType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "sign"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "orderAppid"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "orderUid"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getUserUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "payType"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->a:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getPayType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v1, "appid"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "appkey"

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v0
.end method
