.class public Lcom/facebook/katana/IntentUriHandler;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "IntentUriHandler.java"


# static fields
.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/facebook/katana/util/UriTemplateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/util/UriTemplateMap",
            "<",
            "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/facebook/katana/util/UriTemplateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/util/UriTemplateMap",
            "<",
            "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/IntentUriHandler;->e:Ljava/util/Map;

    .line 202
    new-instance v0, Lcom/facebook/katana/util/UriTemplateMap;

    invoke-direct {v0}, Lcom/facebook/katana/util/UriTemplateMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/IntentUriHandler;->f:Lcom/facebook/katana/util/UriTemplateMap;

    .line 207
    const-string v0, "fb://faceweb/f?href={%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "mobile_page"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 210
    const-string v0, "fb://facewebmodal/f?href={%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "mobile_page"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "faceweb_modal"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/facebook/katana/util/Utils;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 218
    const-string v0, "fb://feed/"

    const-class v1, Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 226
    const-string v0, "fb://feed/{#user_id}"

    invoke-static {v0, v7}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 227
    const-string v0, "fb://profile"

    const-class v1, Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 229
    const-string v0, "fb://profile/{#%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "extra_user_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/ProfileTabHostActivity;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "extra_user_type"

    aput-object v3, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/facebook/katana/util/Utils;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 237
    const-string v0, "fb://profile/{#%s}/wall/inner"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "extra_user_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "within_tab"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "extra_type"

    aput-object v3, v2, v6

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookStreamType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/facebook/katana/util/Utils;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 245
    const-string v0, "fb://profile/{#%s}/info/inner"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "com.facebook.katana.profile.id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/UserInfoActivity;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "com.facebook.katana.profile.show_photo"

    aput-object v3, v2, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/facebook/katana/util/Utils;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 250
    const-string v0, "fb://page/{#%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "extra_user_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/ProfileTabHostActivity;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "extra_user_type"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/facebook/katana/util/Utils;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 258
    const-string v0, "fb://place/fw?pid={#%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "extra_user_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/places/StubPlacesActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 263
    const-string v0, "fb://profile/{#%s}/{%s}"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "extra_user_id"

    aput-object v2, v1, v5

    const-string v2, "tab"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/ProfileTabHostActivity;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "extra_user_type"

    aput-object v3, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/facebook/katana/util/Utils;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 268
    const-string v0, "fb://profile/{#user_id}/mutualfriends"

    invoke-static {v0, v7}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 269
    const-string v0, "fb://profile/{#user_id}/friends"

    invoke-static {v0, v7}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 270
    const-string v0, "fb://profile/{#user_id}/fans"

    invoke-static {v0, v7}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 272
    const-string v0, "fb://event/{#%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "extra_user_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/ProfileTabHostActivity;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "extra_user_type"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/facebook/katana/util/Utils;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 280
    const-string v0, "fb://event/{#%s}/wall/inner"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "extra_user_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "within_tab"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "extra_type"

    aput-object v3, v2, v6

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->EVENT_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookStreamType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/facebook/katana/util/Utils;->a([Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 288
    const-string v0, "fb://friends"

    const-class v1, Lcom/facebook/katana/UsersTabHostActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 289
    const-string v0, "fb://friends/requests/"

    const-class v1, Lcom/facebook/katana/RequestsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 290
    const-string v0, "fb://findfriends"

    const-class v1, Lcom/facebook/katana/activity/findfriends/FriendFinderActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 291
    const-string v0, "fb://pages"

    invoke-static {v0, v7}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 293
    const-string v0, "fb://messaging"

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 294
    const-string v0, "fb://messaging/{%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "user_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/orca/CanonicalThreadLauncherActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 296
    const-string v0, "fb://messaging/compose/new"

    const-class v1, Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 297
    const-string v0, "fb://messaging/compose/{%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "user_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/orca/CanonicalThreadLauncherActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 300
    const-string v0, "fb://messaging/thread/thread?id={%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "thread_id"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 303
    const-string v0, "fb://online"

    const-class v1, Lcom/facebook/orca/creation/StartThreadActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 305
    const-string v0, "fb://requests"

    const-class v1, Lcom/facebook/katana/RequestsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 306
    const-string v0, "fb://events"

    const-class v1, Lcom/facebook/katana/activity/events/EventsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 307
    const-string v0, "fb://places"

    const-class v1, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 309
    const-string v0, "fb://birthdays"

    invoke-static {v0, v7}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 310
    const-string v0, "fb://notes"

    invoke-static {v0, v7}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 311
    const-string v0, "fb://places"

    const-class v1, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 312
    const-string v0, "fb://notifications"

    const-class v1, Lcom/facebook/katana/activity/notifications/NotificationsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 314
    const-string v0, "fb://albums"

    const-class v1, Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 315
    const-string v0, "fb://vault"

    const-class v1, Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 317
    const-string v0, "fb://album/{%s}?owner={#%s}"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "album"

    aput-object v2, v1, v5

    const-string v2, "owner"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 325
    const-string v0, "fb://album/{%s}/{%s}?owner={#%s}"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "open_method"

    aput-object v2, v1, v5

    const-string v2, "album"

    aput-object v2, v1, v4

    const-string v2, "owner"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 331
    const-string v0, "fb://photofeedback/{%1$s}/{%2$s}/{%3$s}?action={%4$s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "owner"

    aput-object v2, v1, v5

    const-string v2, "album"

    aput-object v2, v1, v4

    const-string v2, "photo"

    aput-object v2, v1, v6

    const-string v2, "FEEDBACK_VIEW"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 339
    const-string v0, "fb://photo/{%1$s}/{%2$s}/{%3$s}?action={%4$s %5$s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "owner"

    aput-object v2, v1, v5

    const-string v2, "album"

    aput-object v2, v1, v4

    const-string v2, "photo"

    aput-object v2, v1, v6

    const-string v2, "action"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "android.intent.action.VIEW"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 348
    const-string v0, "fb://photo/{%1$s}/{%2$s}?action={%3$s %4$s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "owner"

    aput-object v2, v1, v5

    const-string v2, "photo"

    aput-object v2, v1, v4

    const-string v2, "action"

    aput-object v2, v1, v6

    const-string v2, "android.intent.action.VIEW"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/LegacyPhotoGalleryActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 356
    const-string v0, "fb://photo/{#%s}/?set={%s}"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "photo_fbid"

    aput-object v2, v1, v5

    const-string v2, "photoset_token"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 362
    const-string v0, "fb://mediaset/{%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "set_token"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 367
    const-string v0, "fb://photo/{#%s}/"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "photo_fbid"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 372
    const-string v0, "fb://upload/photo?uri={%s}"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "photo_uri"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 376
    const-string v0, "fb://video/?href={href}"

    const-class v1, Lcom/facebook/katana/activity/media/ViewVideoActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 378
    const-string v0, "fb://post/{%s}?owner={#%s}"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "extra_post_id"

    aput-object v2, v1, v5

    const-string v2, "extra_uid"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 382
    const-string v0, "fb://codegenerator"

    const-class v1, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 384
    const-string v0, "fb://settings"

    const-class v1, Lcom/facebook/katana/SettingsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 386
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->f:Lcom/facebook/katana/util/UriTemplateMap;

    const-string v1, "fb://redirect?href={%s}"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "destination"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/IntentUriHandler$1;

    invoke-direct {v2}, Lcom/facebook/katana/IntentUriHandler$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->f:Lcom/facebook/katana/util/UriTemplateMap;

    const-string v1, "fb://messages/inbox/{%s}"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "destination"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/IntentUriHandler$2;

    invoke-direct {v2}, Lcom/facebook/katana/IntentUriHandler$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    new-instance v0, Lcom/facebook/katana/util/UriTemplateMap;

    invoke-direct {v0}, Lcom/facebook/katana/util/UriTemplateMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/IntentUriHandler;->g:Lcom/facebook/katana/util/UriTemplateMap;

    .line 428
    const-string v0, "facebook:/chat"

    const-string v1, "fb://online"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v0, "facebook:/events"

    const-string v1, "fb://events"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v0, "facebook:/friends"

    const-string v1, "fb://friends"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "facebook:/inbox"

    const-string v1, "fb://messaging"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v0, "facebook:/newsfeed"

    const-string v1, "fb://feed"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "facebook:/places"

    const-string v1, "fb://places"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "facebook:/requests"

    const-string v1, "fb://requests"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v0, "facebook:/wall?user={user}"

    const-string v1, "fb://profile/<user>/wall"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "facebook:/wall"

    const-string v1, "fb://profile"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "facebook:/info?user={user}"

    const-string v1, "fb://profile/<user>/info"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "facebook:/notifications"

    const-string v1, "fb://notifications"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "facebook:/photos?user={uid}&album={aid}&photo={pid}"

    const-string v1, "fb://photo/<uid>/<aid>/<pid>"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "facebook:/photos?user={uid}&photo={pid}"

    const-string v1, "fb://photo/<uid>/<pid>"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "facebook:/photos?user={uid}&album={aid}"

    const-string v1, "fb://album/<aid>?owner=<uid>"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "facebook:/photos?user={uid}"

    const-string v1, "fb://profile/<uid>/photos"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "facebook:/photos"

    const-string v1, "fb://albums"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v0, "facebook:/feedback?user={uid}&post={post_id}"

    const-string v1, "fb://post/<post_id>?owner=<uid>"

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 127
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 505
    .line 508
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/katana/IntentUriHandler;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap$UriMatch;

    move-result-object v2

    .line 509
    if-eqz v2, :cond_3

    .line 510
    iget-object v0, v2, Lcom/facebook/katana/util/UriTemplateMap$UriMatch;->a:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/katana/IntentUriHandler$UriHandler;

    iget-object v2, v2, Lcom/facebook/katana/util/UriTemplateMap$UriMatch;->b:Landroid/os/Bundle;

    invoke-interface {v0, p0, v2}, Lcom/facebook/katana/IntentUriHandler$UriHandler;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/facebook/katana/util/UriTemplateMap$InvalidUriException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 517
    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 518
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    .line 521
    :goto_1
    if-nez v1, :cond_0

    .line 526
    const-string v0, "^https?://.*\\.facebook\\.com(?:/\\.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 527
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "^https?://.*\\.facebook\\.com/l.php\\?(?:\\.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 529
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-static {p0, p1}, Lcom/facebook/katana/util/FacebookPlatform;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 536
    :cond_0
    if-eqz v1, :cond_1

    .line 537
    const-string v0, "extra_launch_uri"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    :cond_1
    :goto_2
    return-object v1

    .line 514
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 661
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 681
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 682
    if-nez v0, :cond_0

    .line 684
    const-string v0, "fb://feed"

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 686
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->f:Lcom/facebook/katana/util/UriTemplateMap;

    new-instance v1, Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;

    invoke-direct {v1, p1, p2}, Lcom/facebook/katana/IntentUriHandler$NativeUriHandler;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/katana/util/UriTemplateMap$InvalidUriTemplateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 175
    const-string v1, "IntentUriHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid uri template: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 185
    :try_start_0
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->g:Lcom/facebook/katana/util/UriTemplateMap;

    new-instance v1, Lcom/facebook/katana/IntentUriHandler$DeepLinkIntentUriHandler;

    invoke-direct {v1, p1}, Lcom/facebook/katana/IntentUriHandler$DeepLinkIntentUriHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/facebook/katana/util/UriTemplateMap$InvalidUriTemplateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 189
    const-string v1, "IntentUriHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid uri template: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 545
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 552
    :cond_0
    :goto_0
    return v1

    .line 549
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 550
    sget-object v4, Lcom/facebook/katana/IntentUriHandler;->e:Ljava/util/Map;

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 550
    goto :goto_1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-static {p0, p1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_0

    .line 567
    invoke-static {p0, v0}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 568
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 569
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap$UriMatch;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/katana/util/UriTemplateMap$UriMatch",
            "<",
            "Lcom/facebook/katana/IntentUriHandler$UriHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 468
    const-string v1, "faceweb_android"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 470
    invoke-static {p0}, Lcom/facebook/katana/features/faceweb/FacewebUriMap;->a(Landroid/content/Context;)Lcom/facebook/katana/util/UriTemplateMap;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v1, p1}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap$UriMatch;

    move-result-object v0

    .line 488
    :cond_0
    if-nez v0, :cond_1

    .line 490
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->f:Lcom/facebook/katana/util/UriTemplateMap;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap$UriMatch;

    move-result-object v0

    .line 493
    :cond_1
    if-nez v0, :cond_2

    .line 495
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->g:Lcom/facebook/katana/util/UriTemplateMap;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/util/UriTemplateMap;->a(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap$UriMatch;

    move-result-object v0

    .line 498
    :cond_2
    return-object v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 690
    sget-object v0, Lcom/facebook/katana/IntentUriHandler;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 691
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 651
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 653
    invoke-virtual {p0}, Lcom/facebook/katana/IntentUriHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 654
    invoke-direct {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Intent;)V

    .line 656
    invoke-virtual {p0}, Lcom/facebook/katana/IntentUriHandler;->finish()V

    .line 657
    return-void
.end method
