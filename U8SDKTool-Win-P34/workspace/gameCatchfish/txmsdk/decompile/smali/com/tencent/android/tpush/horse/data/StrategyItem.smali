.class public Lcom/tencent/android/tpush/horse/data/StrategyItem;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x177b4a4e69f13173L


# instance fields
.field private protocolType:I

.field private proxyIp:Ljava/lang/String;

.field private proxyPort:I

.field private redirect:I

.field private serverIp:Ljava/lang/String;

.field private serverPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverIp:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverPort:I

    .line 28
    iput-object p3, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyIp:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyPort:I

    .line 30
    iput p5, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->protocolType:I

    .line 31
    iput p6, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->redirect:I

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverIp:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 79
    iput p1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->redirect:I

    .line 80
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)Z
    .registers 4

    .prologue
    .line 83
    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverIp:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverPort:I

    iget v1, p1, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverPort:I

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyIp:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyPort:I

    iget v1, p1, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyPort:I

    if-ne v0, v1, :cond_2a

    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->protocolType:I

    iget v1, p1, Lcom/tencent/android/tpush/horse/data/StrategyItem;->protocolType:I

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public b()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverPort:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyIp:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->protocolType:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyPort:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 92
    instance-of v0, p1, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    if-eqz v0, :cond_b

    .line 93
    check-cast p1, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)Z

    move-result v0

    .line 95
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method public f()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->redirect:I

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverPort:I

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyIp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 102
    .line 104
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverIp:Ljava/lang/String;

    if-nez v0, :cond_28

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverPort:I

    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyIp:Ljava/lang/String;

    if-nez v2, :cond_2f

    :goto_13
    add-int/2addr v0, v1

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyPort:I

    add-int/2addr v0, v1

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->protocolType:I

    add-int/2addr v0, v1

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->redirect:I

    add-int/2addr v0, v1

    .line 110
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0

    .line 104
    :cond_28
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverIp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 106
    :cond_2f
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyIp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13
.end method

.method public i()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 130
    iget v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->protocolType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public j()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 134
    iget v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->redirect:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "serverIp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",serverPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->serverPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", proxyIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",proxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->proxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", protocolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v0, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->protocolType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_53

    const-string v0, "http"

    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", redirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/horse/data/StrategyItem;->redirect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_53
    const-string v0, "tcp"

    goto :goto_3e
.end method
