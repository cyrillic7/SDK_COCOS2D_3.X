.class final Lcom/baidu/bdgame/sdk/obf/ft$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ft;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ft;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ft;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ft$1;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$1;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Lcom/baidu/bdgame/sdk/obf/ft;Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ft$1;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ft;->b(Lcom/baidu/bdgame/sdk/obf/ft;)Lcom/baidu/bdgame/sdk/obf/fu;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ft$1;->a:Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ft;->a(Lcom/baidu/bdgame/sdk/obf/ft;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fu;->b(I)V

    .line 133
    return-void
.end method
