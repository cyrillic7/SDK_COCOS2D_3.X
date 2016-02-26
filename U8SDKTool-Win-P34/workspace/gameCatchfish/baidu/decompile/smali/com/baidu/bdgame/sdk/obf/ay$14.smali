.class final Lcom/baidu/bdgame/sdk/obf/ay$14;
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
    .line 800
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$14;->b:Lcom/baidu/bdgame/sdk/obf/ay;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ay$14;->a:Lcom/baidu/bdgame/sdk/obf/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$14;->a:Lcom/baidu/bdgame/sdk/obf/lt;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lt;->dismiss()V

    .line 804
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$14;->b:Lcom/baidu/bdgame/sdk/obf/ay;

    sget-object v1, Lcom/baidu/sapi2/dto/LoginDTO$LoginType;->USERNAME:Lcom/baidu/sapi2/dto/LoginDTO$LoginType;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ay;->a(Lcom/baidu/bdgame/sdk/obf/ay;Lcom/baidu/sapi2/dto/LoginDTO$LoginType;)V

    .line 805
    return-void
.end method
