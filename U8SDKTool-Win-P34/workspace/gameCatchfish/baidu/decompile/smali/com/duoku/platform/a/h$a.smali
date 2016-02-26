.class Lcom/duoku/platform/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/duoku/platform/a/h;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/a/h;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/duoku/platform/a/h$a;->c:Lcom/duoku/platform/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/a/h;Lcom/duoku/platform/a/h$a;)V
    .registers 3

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/duoku/platform/a/h$a;-><init>(Lcom/duoku/platform/a/h;)V

    return-void
.end method
