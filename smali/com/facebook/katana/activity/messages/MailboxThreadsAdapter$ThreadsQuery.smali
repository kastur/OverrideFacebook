.class public interface abstract Lcom/facebook/katana/activity/messages/MailboxThreadsAdapter$ThreadsQuery;
.super Ljava/lang/Object;
.source "MailboxThreadsAdapter.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mailbox_threads._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "participants"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "other_party"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msg_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "last_update"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "profile_image_url"

    aput-object v2, v0, v1

    return-void
.end method
