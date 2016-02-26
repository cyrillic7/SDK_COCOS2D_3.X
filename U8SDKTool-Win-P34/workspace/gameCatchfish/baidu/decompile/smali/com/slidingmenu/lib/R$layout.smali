.class public final Lcom/slidingmenu/lib/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slidingmenu/lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static slidingmenumain:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    const/high16 v0, 0x7f020000

    sput v0, Lcom/slidingmenu/lib/R$layout;->slidingmenumain:I

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
