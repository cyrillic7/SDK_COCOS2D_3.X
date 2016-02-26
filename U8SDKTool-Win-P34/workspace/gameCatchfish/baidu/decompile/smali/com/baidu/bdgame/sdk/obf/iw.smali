.class public Lcom/baidu/bdgame/sdk/obf/iw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/iw$b;,
        Lcom/baidu/bdgame/sdk/obf/iw$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:F

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iw;->e:Ljava/util/List;

    .line 90
    return-void
.end method

.method public static a(I)Lcom/baidu/bdgame/sdk/obf/iw;
    .registers 5

    .prologue
    .line 40
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/iw;-><init>()V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->d(I)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->e(I)V

    .line 43
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/iw;->a(J)V

    .line 44
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->a(F)V

    .line 46
    return-object v0
.end method

.method public static b(I)Lcom/baidu/bdgame/sdk/obf/iw;
    .registers 5

    .prologue
    .line 50
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/iw;-><init>()V

    .line 51
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->d(I)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->e(I)V

    .line 53
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/iw;->a(J)V

    .line 54
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->a(F)V

    .line 56
    return-object v0
.end method

.method public static c(I)Lcom/baidu/bdgame/sdk/obf/iw;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 60
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/iw;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->d(I)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->e(I)V

    .line 63
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/iw;->a(J)V

    .line 64
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->a(F)V

    .line 66
    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 2

    .prologue
    .line 125
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/iw;->d:F

    .line 126
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/iw;->c:J

    .line 118
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iw;->e:Ljava/util/List;

    .line 37
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/iw;->f:Z

    .line 29
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/iw;->f:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iw;->e:Ljava/util/List;

    return-object v0
.end method

.method public c()J
    .registers 3

    .prologue
    .line 74
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/iw;->a:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 101
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/iw;->a:I

    .line 102
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/iw;->b:I

    return v0
.end method

.method public e(I)V
    .registers 2

    .prologue
    .line 109
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/iw;->b:I

    .line 110
    return-void
.end method

.method public f()J
    .registers 3

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/iw;->c:J

    return-wide v0
.end method

.method public g()F
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/iw;->d:F

    return v0
.end method

.method public h()Z
    .registers 5

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/iw;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
