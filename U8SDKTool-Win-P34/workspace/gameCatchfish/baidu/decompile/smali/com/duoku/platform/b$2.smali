.class Lcom/duoku/platform/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/b;->a(Lcom/duoku/platform/view/StartView;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/b;

.field private final synthetic b:Lcom/duoku/platform/view/StartView;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/b;Lcom/duoku/platform/view/StartView;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/b$2;->a:Lcom/duoku/platform/b;

    iput-object p2, p0, Lcom/duoku/platform/b$2;->b:Lcom/duoku/platform/view/StartView;

    iput p3, p0, Lcom/duoku/platform/b$2;->c:I

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/b$2;->b:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/StartView;->b()V

    .line 486
    iget-object v0, p0, Lcom/duoku/platform/b$2;->b:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/StartView;->c()V

    .line 487
    iget-object v0, p0, Lcom/duoku/platform/b$2;->a:Lcom/duoku/platform/b;

    invoke-static {v0}, Lcom/duoku/platform/b;->e(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->cancel()V

    .line 488
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/b$2;->c:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onInitComplete(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 494
    :goto_20
    return-void

    .line 490
    :catch_21
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method
