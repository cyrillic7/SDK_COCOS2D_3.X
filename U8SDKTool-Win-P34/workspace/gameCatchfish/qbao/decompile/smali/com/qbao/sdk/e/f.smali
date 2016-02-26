.class public Lcom/qbao/sdk/e/f;
.super Landroid/os/CountDownTimer;
.source "TimeCounter.java"


# instance fields
.field private hx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 7

    .prologue
    .line 16
    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 17
    iput-object p2, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    .line 18
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 23
    iget-object v0, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 25
    iget-object v0, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hF:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    :cond_18
    return-void
.end method

.method public onTick(J)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 31
    iget-object v0, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    .line 32
    iget-object v0, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 33
    iget-object v0, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    const-string v1, "{0}s\u91cd\u65b0\u83b7\u53d6"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/qbao/sdk/e/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/qbao/sdk/e/f;->hx:Landroid/widget/TextView;

    sget v1, Lcom/qbao/sdk/e/g;->hH:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    :cond_32
    return-void
.end method
