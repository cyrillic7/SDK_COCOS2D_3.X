.class public final Lcom/meizu/gamecenter/a/ad;
.super Lcom/meizu/gamecenter/a/j;
.source "SourceFile"


# instance fields
.field private c:Lcom/meizu/gamecenter/sdk/MzPayListener;

.field private d:Lcom/meizu/gamecenter/sdk/MzBuyInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzPayListener;Lcom/meizu/gamecenter/a/s;Lcom/meizu/gamecenter/sdk/MzBuyInfo;)V
    .registers 7

    .prologue
    .line 21
    invoke-direct {p0, p1, p3}, Lcom/meizu/gamecenter/a/j;-><init>(Landroid/app/Activity;Lcom/meizu/gamecenter/a/s;)V

    .line 22
    iput-object p2, p0, Lcom/meizu/gamecenter/a/ad;->c:Lcom/meizu/gamecenter/sdk/MzPayListener;

    .line 23
    iput-object p4, p0, Lcom/meizu/gamecenter/a/ad;->d:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    .line 24
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ad;->c:Lcom/meizu/gamecenter/sdk/MzPayListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/meizu/gamecenter/a/ad;->d:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    if-nez v0, :cond_17

    .line 25
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params cant be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_17
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 46
    const-string v0, "PayController"

    const-string v1, "service exception."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ad;->c:Lcom/meizu/gamecenter/sdk/MzPayListener;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ad;->d:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    const-string v3, "\u6e38\u620f\u670d\u52a1\u53d1\u751f\u5f02\u5e38"

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/gamecenter/sdk/MzPayListener;->onPayResult(ILcom/meizu/gamecenter/sdk/MzBuyInfo;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 40
    const-string v0, "PayController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ad;->c:Lcom/meizu/gamecenter/sdk/MzPayListener;

    invoke-static {p1}, Lcom/meizu/gamecenter/sdk/PayResultCode;->fixCode(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ad;->d:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-interface {v0, v1, v2, p2}, Lcom/meizu/gamecenter/sdk/MzPayListener;->onPayResult(ILcom/meizu/gamecenter/sdk/MzBuyInfo;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 31
    const-string v0, "paySuccess"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 32
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ad;->c:Lcom/meizu/gamecenter/sdk/MzPayListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ad;->d:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/gamecenter/sdk/MzPayListener;->onPayResult(ILcom/meizu/gamecenter/sdk/MzBuyInfo;Ljava/lang/String;)V

    .line 36
    :goto_11
    return-void

    .line 34
    :cond_12
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ad;->c:Lcom/meizu/gamecenter/sdk/MzPayListener;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ad;->d:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    const-string v3, "\u6e38\u620f\u670d\u52a1\u53d1\u751f\u5f02\u5e38"

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/gamecenter/sdk/MzPayListener;->onPayResult(ILcom/meizu/gamecenter/sdk/MzBuyInfo;Ljava/lang/String;)V

    goto :goto_11
.end method

.method protected final a(Lcom/meizu/a/d;Lcom/meizu/a/a;)V
    .registers 8

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ad;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/meizu/gamecenter/sdk/a;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ad;->d:Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    iget-object v3, p0, Lcom/meizu/gamecenter/a/ad;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v3}, Lcom/meizu/gamecenter/a/s;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/gamecenter/a/ad;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v4}, Lcom/meizu/gamecenter/a/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/meizu/gamecenter/sdk/a;-><init>(Lcom/meizu/gamecenter/sdk/MzBuyInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/meizu/gamecenter/sdk/a;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 55
    const-string v2, "packageName"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1, v1, p2}, Lcom/meizu/a/d;->b(Landroid/os/Bundle;Lcom/meizu/a/a;)V

    .line 57
    return-void
.end method
