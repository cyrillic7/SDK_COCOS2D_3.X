.class Lcom/baidu/bdgame/sdk/obf/e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/e$b;

.field private b:Lcom/baidu/bdgame/sdk/obf/f;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/e$b;Lcom/baidu/bdgame/sdk/obf/f;)V
    .registers 3

    .prologue
    .line 129
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->a:Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->b:Lcom/baidu/bdgame/sdk/obf/f;

    .line 131
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 138
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->a:Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/e$b;->a(Lcom/baidu/bdgame/sdk/obf/e$b;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0xbb8

    cmp-long v3, v4, v6

    if-gez v3, :cond_14

    .line 162
    :cond_13
    :goto_13
    return-void

    .line 141
    :cond_14
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->a:Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-static {v3, v0, v1}, Lcom/baidu/bdgame/sdk/obf/e$b;->a(Lcom/baidu/bdgame/sdk/obf/e$b;J)J

    move v1, v2

    .line 144
    :goto_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->a:Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/e$b;->b(Lcom/baidu/bdgame/sdk/obf/e$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->a:Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/e$b;->b(Lcom/baidu/bdgame/sdk/obf/e$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/f;

    .line 146
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->b:Lcom/baidu/bdgame/sdk/obf/f;

    if-ne v0, v3, :cond_3a

    .line 144
    :goto_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 150
    :cond_3a
    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/f;->a()V

    goto :goto_36

    .line 156
    :cond_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->a:Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/e$b;->c(Lcom/baidu/bdgame/sdk/obf/e$b;)Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Z)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->a:Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/e$b;->c(Lcom/baidu/bdgame/sdk/obf/e$b;)Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->e()Lcom/baidu/bdgame/sdk/obf/g;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_13

    .line 160
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->a:Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/e$b;->c(Lcom/baidu/bdgame/sdk/obf/e$b;)Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/e$b$a;->b:Lcom/baidu/bdgame/sdk/obf/f;

    invoke-interface {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/g;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/f;)V

    goto :goto_13
.end method
