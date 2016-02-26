.class final Lcom/baidu/bdgame/sdk/obf/cu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cu;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/n;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/cu;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->c:Lcom/baidu/bdgame/sdk/obf/cu;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Long;)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 100
    if-eqz p3, :cond_34

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_34

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lg;->g(Landroid/content/Context;)J

    move-result-wide v0

    .line 103
    cmp-long v2, v0, v2

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kg;->a()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2c

    .line 105
    :cond_24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cu;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 113
    :goto_2b
    return-void

    .line 107
    :cond_2c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cu;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_2b

    .line 111
    :cond_34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$1;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cu;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_2b
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 95
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cu$1;->a(ILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
