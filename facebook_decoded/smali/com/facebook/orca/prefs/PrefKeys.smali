.class public Lcom/facebook/orca/prefs/PrefKeys;
.super Ljava/lang/Object;
.source "PrefKeys.java"


# static fields
.field public static final A:Lcom/facebook/orca/prefs/PrefKey;

.field public static final B:Lcom/facebook/orca/prefs/PrefKey;

.field public static final C:Lcom/facebook/orca/prefs/PrefKey;

.field public static final D:Lcom/facebook/orca/prefs/PrefKey;

.field public static final E:Lcom/facebook/orca/prefs/PrefKey;

.field public static final F:Lcom/facebook/orca/prefs/PrefKey;

.field public static final G:Lcom/facebook/orca/prefs/PrefKey;

.field public static final H:Lcom/facebook/orca/prefs/PrefKey;

.field public static final I:Lcom/facebook/orca/prefs/PrefKey;

.field public static final J:Lcom/facebook/orca/prefs/PrefKey;

.field public static final K:Lcom/facebook/orca/prefs/PrefKey;

.field public static final L:Lcom/facebook/orca/prefs/PrefKey;

.field public static final M:Lcom/facebook/orca/prefs/PrefKey;

.field public static final N:Lcom/facebook/orca/prefs/PrefKey;

.field public static final O:Lcom/facebook/orca/prefs/PrefKey;

.field public static final P:Lcom/facebook/orca/prefs/PrefKey;

.field public static final Q:Lcom/facebook/orca/prefs/PrefKey;

.field private static R:Lcom/facebook/orca/prefs/PrefKey;

.field private static S:Lcom/facebook/orca/prefs/PrefKey;

.field private static T:Lcom/facebook/orca/prefs/PrefKey;

.field private static U:Lcom/facebook/orca/prefs/PrefKey;

.field private static V:Lcom/facebook/orca/prefs/PrefKey;

.field private static W:Lcom/facebook/orca/prefs/PrefKey;

.field private static X:Lcom/facebook/orca/prefs/PrefKey;

.field private static Y:Lcom/facebook/orca/prefs/PrefKey;

.field private static Z:Lcom/facebook/orca/prefs/PrefKey;

.field public static final a:Lcom/facebook/orca/prefs/PrefKey;

.field private static aa:Lcom/facebook/orca/prefs/PrefKey;

.field private static ab:Lcom/facebook/orca/prefs/PrefKey;

.field private static ac:Lcom/facebook/orca/prefs/PrefKey;

.field public static final b:Lcom/facebook/orca/prefs/PrefKey;

.field public static final c:Lcom/facebook/orca/prefs/PrefKey;

.field public static final d:Lcom/facebook/orca/prefs/PrefKey;

.field public static final e:Lcom/facebook/orca/prefs/PrefKey;

.field public static final f:Lcom/facebook/orca/prefs/PrefKey;

.field public static final g:Lcom/facebook/orca/prefs/PrefKey;

.field public static final h:Lcom/facebook/orca/prefs/PrefKey;

.field public static final i:Lcom/facebook/orca/prefs/PrefKey;

.field public static final j:Lcom/facebook/orca/prefs/PrefKey;

.field public static final k:Lcom/facebook/orca/prefs/PrefKey;

.field public static final l:Lcom/facebook/orca/prefs/PrefKey;

.field public static final m:Lcom/facebook/orca/prefs/PrefKey;

.field public static final n:Lcom/facebook/orca/prefs/PrefKey;

.field public static final o:Lcom/facebook/orca/prefs/PrefKey;

.field public static final p:Lcom/facebook/orca/prefs/PrefKey;

.field public static final q:Lcom/facebook/orca/prefs/PrefKey;

.field public static final r:Lcom/facebook/orca/prefs/PrefKey;

.field public static final s:Lcom/facebook/orca/prefs/PrefKey;

.field public static final t:Lcom/facebook/orca/prefs/PrefKey;

.field public static final u:Lcom/facebook/orca/prefs/PrefKey;

.field public static final v:Lcom/facebook/orca/prefs/PrefKey;

.field public static final w:Lcom/facebook/orca/prefs/PrefKey;

.field public static final x:Lcom/facebook/orca/prefs/PrefKey;

.field public static final y:Lcom/facebook/orca/prefs/PrefKey;

.field public static final z:Lcom/facebook/orca/prefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->R:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "auth/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 16
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "fb_token"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 17
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "fb_expires"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 18
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "fb_me_user"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 19
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->a:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "fb_logged_out"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 22
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->R:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "orca/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 23
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "pref_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    .line 24
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "gk_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->c:Lcom/facebook/orca/prefs/PrefKey;

    .line 25
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "rollout_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->d:Lcom/facebook/orca/prefs/PrefKey;

    .line 26
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "me_user_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->e:Lcom/facebook/orca/prefs/PrefKey;

    .line 27
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "first_install_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 28
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "nux_completed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 29
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "auth_machine_id"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    .line 30
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "login_reminder_trigger_state"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 35
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "c2dm/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 36
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->T:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->g:Lcom/facebook/orca/prefs/PrefKey;

    .line 37
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->T:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_register_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->h:Lcom/facebook/orca/prefs/PrefKey;

    .line 38
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->T:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_change_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    .line 39
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->T:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "backoff_ms"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    .line 40
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->T:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_push_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->k:Lcom/facebook/orca/prefs/PrefKey;

    .line 43
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "mqtt/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 44
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->U:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "retry_interval"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    .line 47
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "sms/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 48
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->V:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_push_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->m:Lcom/facebook/orca/prefs/PrefKey;

    .line 49
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->V:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "sms_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->n:Lcom/facebook/orca/prefs/PrefKey;

    .line 52
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "phone_confirm/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 53
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "skipped_phone_verification_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 55
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_confirmation_code_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 57
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_country_code"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 59
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->o:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_sent_number"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 62
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->R:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "preferences/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 65
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->W:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "notifications/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 67
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->X:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "muted_until2"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->p:Lcom/facebook/orca/prefs/PrefKey;

    .line 69
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->X:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "sound_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    .line 71
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->X:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "vibrate_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->r:Lcom/facebook/orca/prefs/PrefKey;

    .line 73
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->X:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "led_enabled"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->s:Lcom/facebook/orca/prefs/PrefKey;

    .line 75
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->X:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "ringtone_uri"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    .line 77
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->X:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "location_services"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->u:Lcom/facebook/orca/prefs/PrefKey;

    .line 81
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->W:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "threads/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    .line 84
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "app_info/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 85
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->w:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_fetch_time_ms"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->x:Lcom/facebook/orca/prefs/PrefKey;

    .line 87
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->w:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "app_info_data"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->y:Lcom/facebook/orca/prefs/PrefKey;

    .line 91
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "gk/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 92
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->Y:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "values/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->Z:Lcom/facebook/orca/prefs/PrefKey;

    .line 93
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->Y:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "last_fetch_time_ms"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->z:Lcom/facebook/orca/prefs/PrefKey;

    .line 96
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "rollout/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 97
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->aa:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "values/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ab:Lcom/facebook/orca/prefs/PrefKey;

    .line 100
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "internal/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 101
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ac:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "logging_level"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->A:Lcom/facebook/orca/prefs/PrefKey;

    .line 102
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ac:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "debug_logs"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->B:Lcom/facebook/orca/prefs/PrefKey;

    .line 103
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ac:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "php_profiling"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->C:Lcom/facebook/orca/prefs/PrefKey;

    .line 104
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ac:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "wirehog_profiling"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->D:Lcom/facebook/orca/prefs/PrefKey;

    .line 106
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ac:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "force_fb4a_look_and_feel"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 111
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ac:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "web/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 112
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->E:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "server_tier"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->F:Lcom/facebook/orca/prefs/PrefKey;

    .line 113
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->E:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "sandbox"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->G:Lcom/facebook/orca/prefs/PrefKey;

    .line 116
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ac:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "mqtt/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 117
    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->H:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "server_tier"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->I:Lcom/facebook/orca/prefs/PrefKey;

    .line 118
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->H:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "sandbox"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->J:Lcom/facebook/orca/prefs/PrefKey;

    .line 121
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "version_promo_dismissed_version"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->K:Lcom/facebook/orca/prefs/PrefKey;

    .line 123
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "version_promo_dismissed_time"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    .line 127
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "notifications/recent_threads/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->L:Lcom/facebook/orca/prefs/PrefKey;

    .line 131
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->X:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "threads/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->M:Lcom/facebook/orca/prefs/PrefKey;

    .line 135
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->R:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "app_info/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->N:Lcom/facebook/orca/prefs/PrefKey;

    .line 136
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->R:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/gk/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->O:Lcom/facebook/orca/prefs/PrefKey;

    .line 139
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "ui_counters/"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->P:Lcom/facebook/orca/prefs/PrefKey;

    .line 142
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->S:Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    sput-object v0, Lcom/facebook/orca/prefs/PrefKeys;->Q:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2
    .parameter

    .prologue
    .line 145
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->M:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/muted_until2"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2
    .parameter

    .prologue
    .line 150
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/share_location"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2
    .parameter

    .prologue
    .line 155
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->v:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    const-string v1, "/backside_tab"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2
    .parameter

    .prologue
    .line 160
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->Z:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 1
    .parameter

    .prologue
    .line 164
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->ab:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;
    .locals 2
    .parameter

    .prologue
    .line 168
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->L:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/prefs/PrefKey;->b(Ljava/lang/String;)Lcom/facebook/orca/common/util/TypedKey;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    return-object v0
.end method
