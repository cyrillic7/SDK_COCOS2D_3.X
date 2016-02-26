.class final Lcom/baidu/bdgame/sdk/obf/gc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/gc;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/gc;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/gc;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gc$1;->a:Lcom/baidu/bdgame/sdk/obf/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc$1;->a:Lcom/baidu/bdgame/sdk/obf/gc;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gc;->a(Lcom/baidu/bdgame/sdk/obf/gc;Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gc$1;->a:Lcom/baidu/bdgame/sdk/obf/gc;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/gc;->b(Lcom/baidu/bdgame/sdk/obf/gc;)Lcom/baidu/bdgame/sdk/obf/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gc$1;->a:Lcom/baidu/bdgame/sdk/obf/gc;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/gc;->a(Lcom/baidu/bdgame/sdk/obf/gc;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gd;->b(I)V

    .line 120
    return-void
.end method
