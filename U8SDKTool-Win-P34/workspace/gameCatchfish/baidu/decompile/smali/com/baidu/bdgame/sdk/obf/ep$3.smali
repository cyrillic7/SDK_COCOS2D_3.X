.class final Lcom/baidu/bdgame/sdk/obf/ep$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ep;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ep;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ep;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ep$3;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ep$3;->a:Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Lcom/baidu/bdgame/sdk/obf/ep;Landroid/view/View;)V

    .line 286
    return-void
.end method
