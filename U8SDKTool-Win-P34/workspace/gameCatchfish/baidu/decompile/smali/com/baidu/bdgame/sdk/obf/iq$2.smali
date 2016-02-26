.class final Lcom/baidu/bdgame/sdk/obf/iq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/iq;->a(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/iq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/iq;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iq$2;->a:Lcom/baidu/bdgame/sdk/obf/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq$2;->a:Lcom/baidu/bdgame/sdk/obf/iq;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/iq;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 123
    if-nez v0, :cond_17

    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iq$2;->a:Lcom/baidu/bdgame/sdk/obf/iq;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/iq;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tips_invalid_callapp"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    :cond_17
    return-void
.end method
