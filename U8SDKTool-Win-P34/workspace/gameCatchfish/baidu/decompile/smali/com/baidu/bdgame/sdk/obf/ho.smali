.class public Lcom/baidu/bdgame/sdk/obf/ho;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 68
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ho;->h:I

    .line 69
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/ho;->g:J

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ho;->e:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ho;->f:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public c()J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->g:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ho;->i:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->h:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ho;->j:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public e()Lcom/baidu/platformsdk/OrderStatus;
    .registers 5

    .prologue
    .line 50
    new-instance v1, Lcom/baidu/platformsdk/OrderStatus;

    invoke-direct {v1}, Lcom/baidu/platformsdk/OrderStatus;-><init>()V

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/OrderStatus;->setCpOrderSerial(Ljava/lang/String;)V

    .line 52
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/ho;->g:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platformsdk/OrderStatus;->setOrderPriceCent(J)V

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/OrderStatus;->setStatusDesc(Ljava/lang/String;)V

    .line 54
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ho;->h:I

    .line 55
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Unknown:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 56
    if-nez v2, :cond_20

    .line 57
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Submit:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 63
    :cond_1c
    :goto_1c
    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/OrderStatus;->setStatus(Lcom/baidu/platformsdk/OrderStatus$Status;)V

    .line 64
    return-object v1

    .line 58
    :cond_20
    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 59
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Success:Lcom/baidu/platformsdk/OrderStatus$Status;

    goto :goto_1c

    .line 60
    :cond_26
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 61
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Fail:Lcom/baidu/platformsdk/OrderStatus$Status;

    goto :goto_1c
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ho;->j:Ljava/lang/String;

    return-object v0
.end method
