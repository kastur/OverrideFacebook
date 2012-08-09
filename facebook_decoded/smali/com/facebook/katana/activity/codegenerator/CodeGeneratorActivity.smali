.class public Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "CodeGeneratorActivity.java"


# static fields
.field private static final e:[I


# instance fields
.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Lcom/facebook/katana/binding/AppSession;

.field private i:Lcom/facebook/katana/view/FacebookProgressCircleView;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->e:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t
        0x40t 0x42t 0xft 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0xe1t 0xf5t 0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->f:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity$2;-><init>(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->j:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 180
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 184
    invoke-static {p0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->d(Ljava/lang/String;)[B

    move-result-object v1

    .line 185
    invoke-static {v1, v0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->a([B[B)[B

    move-result-object v0

    .line 188
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0xf

    .line 190
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    .line 196
    sget-object v1, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->e:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    rem-int/2addr v0, v1

    .line 198
    const-string v1, "%06d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method

.method private static a([B[B)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 213
    :try_start_0
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 214
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "RAW"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 215
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "hmac function failed"

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;)Lcom/facebook/katana/view/FacebookProgressCircleView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->i:Lcom/facebook/katana/view/FacebookProgressCircleView;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p0}, Lcom/facebook/katana/model/CodeGeneratorGetSecretResponse;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x8

    .line 236
    new-array v6, v1, [B

    move v1, v0

    move v2, v0

    move v3, v0

    .line 240
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 242
    const/16 v5, 0x41

    if-gt v5, v4, :cond_1

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_1

    .line 244
    add-int/lit8 v4, v4, -0x41

    move v5, v4

    .line 248
    :goto_1
    add-int/lit8 v4, v2, 0x5

    .line 249
    shl-int/lit8 v2, v3, 0x5

    .line 250
    and-int/lit8 v3, v5, 0x1f

    or-int/2addr v3, v2

    .line 251
    const/16 v2, 0x8

    if-lt v4, v2, :cond_3

    .line 252
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v5, v4, -0x8

    shr-int v5, v3, v5

    int-to-byte v5, v5

    aput-byte v5, v6, v1

    .line 253
    add-int/lit8 v1, v4, -0x8

    move v7, v2

    move v2, v1

    move v1, v7

    .line 240
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    add-int/lit8 v4, v4, -0x32

    add-int/lit8 v4, v4, 0x1a

    move v5, v4

    goto :goto_1

    .line 256
    :cond_2
    return-object v6

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->h:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login_approvals_secret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->h:Lcom/facebook/katana/binding/AppSession;

    .line 57
    invoke-direct {p0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->g:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->finish()V

    .line 103
    :goto_0
    return-void

    .line 67
    :cond_0
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity$1;-><init>(Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookProgressCircleView;

    iput-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->i:Lcom/facebook/katana/view/FacebookProgressCircleView;

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->i:Lcom/facebook/katana/view/FacebookProgressCircleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/FacebookProgressCircleView;->setVisibility(I)V

    .line 125
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 132
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->h:Lcom/facebook/katana/binding/AppSession;

    .line 133
    invoke-direct {p0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->g:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorAutoProvisionSecretActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->finish()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    iget-object v0, p0, Lcom/facebook/katana/activity/codegenerator/CodeGeneratorActivity;->i:Lcom/facebook/katana/view/FacebookProgressCircleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/FacebookProgressCircleView;->setVisibility(I)V

    goto :goto_0
.end method
