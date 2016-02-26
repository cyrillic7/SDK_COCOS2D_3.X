.class final Lcom/baidu/bdgame/sdk/obf/it$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/it;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/it;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/it;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/it$6;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it$6;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/it;->b(Lcom/baidu/bdgame/sdk/obf/it;)Lcom/baidu/bdgame/sdk/obf/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iu;->dismiss()V

    .line 211
    return-void
.end method
