.class final Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;
    .registers 4

    .prologue
    .line 549
    new-instance v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;-><init>(Landroid/os/Parcel;Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;
    .registers 3

    .prologue
    .line 554
    new-array v0, p1, [Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c$1;->a(Landroid/os/Parcel;)Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c$1;->a(I)[Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;

    move-result-object v0

    return-object v0
.end method
