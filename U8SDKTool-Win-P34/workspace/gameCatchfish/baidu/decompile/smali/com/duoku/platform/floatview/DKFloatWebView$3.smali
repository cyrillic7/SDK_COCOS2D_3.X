.class Lcom/duoku/platform/floatview/DKFloatWebView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/DKFloatWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWebView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$3;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$3;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->c()V

    .line 656
    return-void
.end method
