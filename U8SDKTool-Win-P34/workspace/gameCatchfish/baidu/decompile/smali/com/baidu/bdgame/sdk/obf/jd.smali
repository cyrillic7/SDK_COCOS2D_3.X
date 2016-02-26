.class public Lcom/baidu/bdgame/sdk/obf/jd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:Z

.field private f:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jd;->f:J

    .line 25
    return-void
.end method

.method public static a(Lcom/baidu/platformsdk/PayOrderInfo;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 7

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jd;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/baidu/platformsdk/PayOrderInfo;->getCooperatorOrderSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jd;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/baidu/platformsdk/PayOrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jd;->b(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/baidu/platformsdk/PayOrderInfo;->getRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jd;->a(I)V

    .line 33
    invoke-virtual {p0}, Lcom/baidu/platformsdk/PayOrderInfo;->getTotalPriceCent()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/jd;->a(J)V

    .line 35
    invoke-virtual {p0}, Lcom/baidu/platformsdk/PayOrderInfo;->getTotalPriceCent()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2f

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/bdgame/sdk/obf/jd;->e:Z

    .line 40
    :goto_2e
    return-object v0

    .line 38
    :cond_2f
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/bdgame/sdk/obf/jd;->e:Z

    goto :goto_2e
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 80
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/jd;->d:I

    .line 81
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/jd;->c:J

    .line 73
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jd;->a:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/jd;->e:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/jd;->f:J

    .line 89
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jd;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jd;->c:J

    return-wide v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/jd;->d:I

    return v0
.end method

.method public f()J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jd;->f:J

    return-wide v0
.end method
