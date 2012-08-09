.class interface abstract Lcom/facebook/katana/activity/events/EventsAdapter$EventsQuery;
.super Ljava/lang/Object;
.source "EventsAdapter.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rsvp_status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/activity/events/EventsAdapter$EventsQuery;->a:[Ljava/lang/String;

    return-void
.end method
