.class Lcom/duoku/platform/b$1;
.super Lcom/duoku/platform/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/b;->a(Landroid/app/Activity;Lcom/duoku/platform/DkPlatformSettings;Lcom/duoku/platform/IDKSDKCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/b$1;->a:Lcom/duoku/platform/b;

    .line 150
    invoke-direct {p0}, Lcom/duoku/platform/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 6

    .prologue
    .line 156
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 158
    invoke-static {}, Lcom/duoku/platform/view/d;->a()V

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/duoku/platform/b$1;->a:Lcom/duoku/platform/b;

    iget-object v1, p0, Lcom/duoku/platform/b$1;->a:Lcom/duoku/platform/b;

    invoke-static {v1}, Lcom/duoku/platform/b;->c(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/StartView;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/b$1;->a:Lcom/duoku/platform/b;

    invoke-static {v2}, Lcom/duoku/platform/b;->d(Lcom/duoku/platform/b;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/b;Lcom/duoku/platform/view/StartView;JI)V

    .line 162
    return-void
.end method
