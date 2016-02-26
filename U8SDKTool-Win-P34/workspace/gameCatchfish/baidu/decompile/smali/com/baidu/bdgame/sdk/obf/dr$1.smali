.class final Lcom/baidu/bdgame/sdk/obf/dr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/dp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/n;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 35
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dr$1;->a(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    if-eqz p3, :cond_3a

    .line 41
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dq;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/dq;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->a:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 47
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->a:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Landroid/content/Context;Ljava/util/List;)V

    .line 50
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->a:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/baidu/bdgame/sdk/obf/dr;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->a:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/baidu/bdgame/sdk/obf/dr;->d(Landroid/content/Context;Ljava/util/List;)V

    .line 56
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->e(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/dq;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 59
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->f(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/dq;->b(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 61
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v2, v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dq;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 65
    :goto_39
    return-void

    .line 63
    :cond_3a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dr$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, v2, v2}, Lcom/baidu/bdgame/sdk/obf/p;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_39
.end method
