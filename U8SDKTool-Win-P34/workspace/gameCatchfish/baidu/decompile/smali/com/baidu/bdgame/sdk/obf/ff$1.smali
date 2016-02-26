.class final Lcom/baidu/bdgame/sdk/obf/ff$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ff;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ff;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ff;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ff$1;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff$1;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ff;->a(Lcom/baidu/bdgame/sdk/obf/ff;Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ff$1;->a:Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ff;->a(Lcom/baidu/bdgame/sdk/obf/ff;)V

    .line 114
    return-void
.end method
