.class public Lcom/baidu/bdgame/sdk/obf/hr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/bdgame/sdk/obf/iy;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/hr;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/hr;->c:I

    .line 35
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hr;->b:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 27
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hr;->a:Ljava/util/List;

    .line 19
    return-void
.end method

.method public b()Lcom/baidu/bdgame/sdk/obf/iy;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/hr;->b:Lcom/baidu/bdgame/sdk/obf/iy;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/hr;->c:I

    return v0
.end method
