.class final Lcom/baidu/bdgame/sdk/obf/cp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cp;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cp;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cp;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cp$2;->a:Lcom/baidu/bdgame/sdk/obf/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kr;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 106
    :goto_6
    return-void

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp$2;->a:Lcom/baidu/bdgame/sdk/obf/cp;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cp;->b(Lcom/baidu/bdgame/sdk/obf/cp;)V

    goto :goto_6
.end method
