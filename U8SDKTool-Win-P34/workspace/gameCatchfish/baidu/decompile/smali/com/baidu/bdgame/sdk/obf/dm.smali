.class public Lcom/baidu/bdgame/sdk/obf/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:J

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->e:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->f:J

    .line 18
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->g:J

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->h:Ljava/util/List;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 77
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->e:I

    .line 78
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->f:J

    .line 86
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->k:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->h:Ljava/util/List;

    .line 118
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->g:J

    .line 94
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->i:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->e:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dm;->j:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public g()J
    .registers 3

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->f:J

    return-wide v0
.end method

.method public h()J
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->g:J

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dm;->h:Ljava/util/List;

    return-object v0
.end method
