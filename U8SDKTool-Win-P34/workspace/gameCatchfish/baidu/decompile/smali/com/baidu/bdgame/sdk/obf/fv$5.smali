.class final Lcom/baidu/bdgame/sdk/obf/fv$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fv;->c(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fv;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fv;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fv$5;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fv$5;->a:Lcom/baidu/bdgame/sdk/obf/fv;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fv;->t()V

    .line 185
    return-void
.end method
