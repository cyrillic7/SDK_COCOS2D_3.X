.class final Lcom/baidu/bdgame/sdk/obf/ay$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/lt;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ay;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/bdgame/sdk/obf/lt;)V
    .registers 3

    .prologue
    .line 792
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$13;->b:Lcom/baidu/bdgame/sdk/obf/ay;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ay$13;->a:Lcom/baidu/bdgame/sdk/obf/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$13;->a:Lcom/baidu/bdgame/sdk/obf/lt;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lt;->dismiss()V

    .line 796
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$13;->b:Lcom/baidu/bdgame/sdk/obf/ay;

    sget-object v1, Lcom/baidu/sapi2/dto/LoginDTO$LoginType;->PHONE:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V

    .line 797
    return-void
.end method
