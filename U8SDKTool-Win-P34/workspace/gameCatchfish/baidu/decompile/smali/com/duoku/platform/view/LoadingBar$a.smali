.class Lcom/duoku/platform/view/LoadingBar$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/LoadingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/LoadingBar;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/LoadingBar;)V
    .registers 2

    .prologue
    .line 250
    iput-object p1, p0, Lcom/duoku/platform/view/LoadingBar$a;->a:Lcom/duoku/platform/view/LoadingBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/LoadingBar;Lcom/duoku/platform/view/LoadingBar$a;)V
    .registers 3

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/LoadingBar$a;-><init>(Lcom/duoku/platform/view/LoadingBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/duoku/platform/view/LoadingBar$a;->a:Lcom/duoku/platform/view/LoadingBar;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/duoku/platform/view/LoadingBar;->a(Lcom/duoku/platform/view/LoadingBar;I)V

    .line 255
    return-void
.end method
