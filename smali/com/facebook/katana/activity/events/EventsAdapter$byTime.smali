.class public Lcom/facebook/katana/activity/events/EventsAdapter$byTime;
.super Ljava/lang/Object;
.source "EventsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/activity/events/EventsAdapter$Item;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/events/EventsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/activity/events/EventsAdapter$Item;Lcom/facebook/katana/activity/events/EventsAdapter$Item;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/katana/activity/events/EventsAdapter$Item;->e()J

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
    .line 350
    check-cast p1, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    check-cast p2, Lcom/facebook/katana/activity/events/EventsAdapter$Item;

    invoke-static {p1, p2}, Lcom/facebook/katana/activity/events/EventsAdapter$byTime;->a(Lcom/facebook/katana/activity/events/EventsAdapter$Item;Lcom/facebook/katana/activity/events/EventsAdapter$Item;)I

    move-result v0

    return v0
.end method
