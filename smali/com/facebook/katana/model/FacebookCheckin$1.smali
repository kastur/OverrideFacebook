.class final Lcom/facebook/katana/model/FacebookCheckin$1;
.super Ljava/lang/Object;
.source "FacebookCheckin.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/model/FacebookCheckin;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/model/FacebookCheckin;Lcom/facebook/katana/model/FacebookCheckin;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 82
    .line 85
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mTimestamp:J

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookCheckinDetails;->mTimestamp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    check-cast p1, Lcom/facebook/katana/model/FacebookCheckin;

    check-cast p2, Lcom/facebook/katana/model/FacebookCheckin;

    invoke-static {p1, p2}, Lcom/facebook/katana/model/FacebookCheckin$1;->a(Lcom/facebook/katana/model/FacebookCheckin;Lcom/facebook/katana/model/FacebookCheckin;)I

    move-result v0

    return v0
.end method
