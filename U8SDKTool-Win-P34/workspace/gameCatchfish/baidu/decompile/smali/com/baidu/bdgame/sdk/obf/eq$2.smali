.class final Lcom/baidu/bdgame/sdk/obf/eq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/eq;->b(IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eq;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/eq;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eq$2;->a:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq$2;->a:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->b(Lcom/baidu/bdgame/sdk/obf/eq;)V

    .line 85
    return-void
.end method
