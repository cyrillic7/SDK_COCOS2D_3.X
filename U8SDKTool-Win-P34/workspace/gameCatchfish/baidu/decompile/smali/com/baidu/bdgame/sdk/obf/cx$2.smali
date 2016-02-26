.class final Lcom/baidu/bdgame/sdk/obf/cx$2;
.super Lcom/baidu/bdgame/sdk/obf/cy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cx;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cx;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cx;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cx$2;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cy;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cx$2;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->a(Lcom/baidu/bdgame/sdk/obf/cx;)Lcom/baidu/bdgame/sdk/obf/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cx$2;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->a(Lcom/baidu/bdgame/sdk/obf/cx;)Lcom/baidu/bdgame/sdk/obf/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/hg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hg;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cx$2;->a:Lcom/baidu/bdgame/sdk/obf/cx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cx;->a(Lcom/baidu/bdgame/sdk/obf/cx;)Lcom/baidu/bdgame/sdk/obf/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cw;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/hg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hg;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Z
    .registers 3

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cx$2;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
