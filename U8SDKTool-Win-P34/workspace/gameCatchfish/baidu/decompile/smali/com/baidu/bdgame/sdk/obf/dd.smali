.class public Lcom/baidu/bdgame/sdk/obf/dd;
.super Lcom/baidu/bdgame/sdk/obf/dh;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/baidu/bdgame/sdk/obf/de;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/baidu/bdgame/sdk/obf/de;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;I",
            "Lcom/baidu/bdgame/sdk/obf/de;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dh;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dd;->a:Ljava/util/List;

    .line 20
    iput p3, p0, Lcom/baidu/bdgame/sdk/obf/dd;->b:I

    .line 21
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/dd;->c:Lcom/baidu/bdgame/sdk/obf/de;

    .line 22
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/df;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/dd;->b:I

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .registers 4

    .prologue
    .line 42
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dd;->c:Lcom/baidu/bdgame/sdk/obf/de;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/de;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 44
    return-void
.end method

.method public d(I)I
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dd;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/df;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)I

    move-result v0

    return v0
.end method

.method public e(I)Z
    .registers 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dd;->c:Lcom/baidu/bdgame/sdk/obf/de;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/de;->b(Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    return v0
.end method

.method public f(I)Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    return-object v0
.end method
