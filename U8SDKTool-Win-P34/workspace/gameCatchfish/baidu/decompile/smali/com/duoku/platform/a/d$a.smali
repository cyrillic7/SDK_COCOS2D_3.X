.class Lcom/duoku/platform/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/duoku/platform/a/d;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/a/d;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/duoku/platform/a/d$a;->d:Lcom/duoku/platform/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/a/d;Lcom/duoku/platform/a/d$a;)V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/duoku/platform/a/d$a;-><init>(Lcom/duoku/platform/a/d;)V

    return-void
.end method
