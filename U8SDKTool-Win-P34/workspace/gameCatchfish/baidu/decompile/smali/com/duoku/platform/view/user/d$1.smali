.class Lcom/duoku/platform/view/user/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/user/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/d;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/d;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/d$1;->a:Lcom/duoku/platform/view/user/d;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 343
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$1;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->a(Lcom/duoku/platform/view/user/d;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->r:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 344
    const/4 v0, 0x0

    return v0
.end method
