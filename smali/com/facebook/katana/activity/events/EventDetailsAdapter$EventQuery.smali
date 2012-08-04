.class public interface abstract Lcom/facebook/katana/activity/events/EventDetailsAdapter$EventQuery;
.super Ljava/lang/Object;
.source "EventDetailsAdapter.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "medium_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "host"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "venue"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "creator_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rsvp_status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hide_guest_list"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$EventQuery;->a:[Ljava/lang/String;

    return-void
.end method
