.class Lcom/duoku/platform/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/a/b;
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

.field e:Landroid/widget/TextView;

.field final synthetic f:Lcom/duoku/platform/a/b;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/a/b;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/duoku/platform/a/b$a;->f:Lcom/duoku/platform/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/a/b;Lcom/duoku/platform/a/b$a;)V
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/duoku/platform/a/b$a;-><init>(Lcom/duoku/platform/a/b;)V

    return-void
.end method
