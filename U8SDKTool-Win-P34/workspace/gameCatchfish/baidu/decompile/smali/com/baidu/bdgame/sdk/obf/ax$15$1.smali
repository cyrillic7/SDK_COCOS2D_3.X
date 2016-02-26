.class final Lcom/baidu/bdgame/sdk/obf/ax$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ax$15;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ax$15;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ax$15;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 336
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax$15$1;->b:Lcom/baidu/bdgame/sdk/obf/ax$15;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ax$15$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax$15$1;->b:Lcom/baidu/bdgame/sdk/obf/ax$15;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ax$15;->a:Lcom/baidu/bdgame/sdk/obf/ax;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ax;->e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax$15$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 341
    return-void
.end method
