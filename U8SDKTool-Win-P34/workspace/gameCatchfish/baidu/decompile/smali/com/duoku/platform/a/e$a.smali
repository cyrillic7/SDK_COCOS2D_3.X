.class Lcom/duoku/platform/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/LinearLayout;

.field final synthetic f:Lcom/duoku/platform/a/e;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/a/e;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/duoku/platform/a/e$a;->f:Lcom/duoku/platform/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/a/e;Lcom/duoku/platform/a/e$a;)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/duoku/platform/a/e$a;-><init>(Lcom/duoku/platform/a/e;)V

    return-void
.end method
