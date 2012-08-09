.class public Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$byTime;
.super Ljava/lang/Object;
.source "EventBirthdaysAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    check-cast p1, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;

    check-cast p2, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;

    invoke-static {p1, p2}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$byTime;->a(Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;)I

    move-result v0

    return v0
.end method
