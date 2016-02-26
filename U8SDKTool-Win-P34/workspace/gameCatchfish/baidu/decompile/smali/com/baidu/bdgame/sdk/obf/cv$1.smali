.class final Lcom/baidu/bdgame/sdk/obf/cv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cv;->a(Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/da;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cn;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/n;

.field final synthetic d:Lcom/baidu/bdgame/sdk/obf/cv;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cv;Lcom/baidu/bdgame/sdk/obf/cn;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->d:Lcom/baidu/bdgame/sdk/obf/cv;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->c:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/da;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->d:Lcom/baidu/bdgame/sdk/obf/cv;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Lcom/baidu/bdgame/sdk/obf/cv;Landroid/content/Context;Z)V

    .line 79
    if-nez p1, :cond_67

    if-eqz p3, :cond_67

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/da;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 81
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/da;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dc;

    .line 82
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dc;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->d:Lcom/baidu/bdgame/sdk/obf/cv;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Lcom/baidu/bdgame/sdk/obf/cv;Landroid/content/Context;Z)V

    goto :goto_1f

    .line 87
    :cond_44
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dc;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 88
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->d:Lcom/baidu/bdgame/sdk/obf/cv;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->b:Ljava/util/List;

    invoke-static {v2, v3, v0, v4}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Lcom/baidu/bdgame/sdk/obf/cv;Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/dc;Ljava/util/List;)V

    goto :goto_1f

    .line 94
    :cond_5a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->c:Lcom/baidu/bdgame/sdk/obf/n;

    if-eqz v0, :cond_67

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cv$1;->c:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v6}, Lcom/baidu/bdgame/sdk/obf/p;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_67
    return-void
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 73
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/da;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cv$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/da;)V

    return-void
.end method
