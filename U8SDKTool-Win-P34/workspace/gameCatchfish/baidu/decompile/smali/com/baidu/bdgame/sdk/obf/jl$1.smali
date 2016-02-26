.class final Lcom/baidu/bdgame/sdk/obf/jl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jl;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jl;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jl;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jl$1;->a:Lcom/baidu/bdgame/sdk/obf/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl$1;->a:Lcom/baidu/bdgame/sdk/obf/jl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jl;->j()V

    .line 177
    return-void
.end method
