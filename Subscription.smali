.class public Lcom/vaidilya/collegeconnect/activities/Subscription;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Subscription.java"


# static fields
.field private static final AMOUNT_ADDON:I = 0x3e7

.field private static final AMOUNT_PREMIUM:I = 0xbb7

.field private static final MODULE_PREMIUM:Ljava/lang/String; = "premium"

.field private static final SUBSCRIPTION_URL:Ljava/lang/String; = "https://api.shooinstars.in/subscribe"


# instance fields
.field private buyBtn:Landroid/widget/Button;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private statusText:Landroid/widget/TextView;

.field private subscriptionListener:Lcom/google/firebase/database/ValueEventListener;

.field private termsText:Landroid/widget/TextView;

.field private uid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$EqEq0lXlUrpBz5lPHd7oBWM3iXc(Lcom/vaidilya/collegeconnect/activities/Subscription;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCMZq9E1GrHXeqOf9JCaI6WY5RQ(Lcom/vaidilya/collegeconnect/activities/Subscription;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->lambda$openPaymentPage$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bBEOdPnn8koQ8wlPs8AHUaDXfZo(Lcom/vaidilya/collegeconnect/activities/Subscription;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->lambda$showBuyState$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lV-Z0i3sZiczwfgO5yRX_aVzYHQ(Lcom/vaidilya/collegeconnect/activities/Subscription;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r-HuARfCyyKmNU6XP5MTDOTwnvM(Lcom/vaidilya/collegeconnect/activities/Subscription;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetInt(Lcom/vaidilya/collegeconnect/activities/Subscription;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vaidilya/collegeconnect/activities/Subscription;->getInt(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowActiveState(Lcom/vaidilya/collegeconnect/activities/Subscription;)V
    .locals 0

    invoke-direct {p0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->showActiveState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowBuyState(Lcom/vaidilya/collegeconnect/activities/Subscription;)V
    .locals 0

    invoke-direct {p0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->showBuyState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getInt(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 271
    :try_start_0
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 272
    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_0
    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    return v0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 53
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/vaidilya/collegeconnect/activities/Colleges;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    .line 61
    const-string p1, "https://player.vimeo.com/video/1166281961"

    invoke-static {p0, p1}, Lcom/vaidilya/collegeconnect/utils/HelpVideoHelper;->showVideo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$openPaymentPage$4(Ljava/lang/String;)V
    .locals 2

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showBuyState$3(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0xbb7

    .line 223
    const-string v0, "premium"

    invoke-direct {p0, p1, v0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->openPaymentPage(ILjava/lang/String;)V

    return-void
.end method

.method private loadSubscriptionStatus()V
    .locals 2

    .line 139
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "users"

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->uid:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->subscriptionListener:Lcom/google/firebase/database/ValueEventListener;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    .line 148
    :cond_0
    new-instance v1, Lcom/vaidilya/collegeconnect/activities/Subscription$2;

    invoke-direct {v1, p0}, Lcom/vaidilya/collegeconnect/activities/Subscription$2;-><init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    iput-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->subscriptionListener:Lcom/google/firebase/database/ValueEventListener;

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    return-void
.end method

.method private openPaymentPage(ILjava/lang/String;)V
    .locals 3

    .line 244
    const-string v0, "Redirecting to Shooin Stars secure portal..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.shooinstars.in/subscribe?uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->uid:Ljava/lang/String;

    .line 251
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&module="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 253
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 256
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda0;-><init>(Lcom/vaidilya/collegeconnect/activities/Subscription;Ljava/lang/String;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupTermsClickable()V
    .locals 5

    .line 95
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "By opting for this subscription you agree to our Terms and Conditions"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    const-string v2, "Terms and Conditions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    if-gez v1, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v3, Lcom/vaidilya/collegeconnect/activities/Subscription$1;

    invoke-direct {v3, p0}, Lcom/vaidilya/collegeconnect/activities/Subscription$1;-><init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    const/16 v4, 0x21

    .line 119
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 126
    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->termsText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->termsText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 128
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->termsText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

.method private showActiveState()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->statusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->statusText:Landroid/widget/TextView;

    const-string v2, "Premium access is active"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->buyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->buyBtn:Landroid/widget/Button;

    const-string v1, "COUNSELING ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showBuyState()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->statusText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->buyBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->buyBtn:Landroid/widget/Button;

    const-string v1, "ENROLL FOR COUNSELING PROGRAM"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->buyBtn:Landroid/widget/Button;

    new-instance v1, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda4;-><init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget p1, Lcom/vaidilya/collegeconnect/R$layout;->activity_subscription:I

    invoke-virtual {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->setContentView(I)V

    .line 49
    sget p1, Lcom/vaidilya/collegeconnect/R$id;->searchIcon:I

    invoke-virtual {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/vaidilya/collegeconnect/R$id;->menuIcon:I

    invoke-virtual {p0, v0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 52
    new-instance v1, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda1;-><init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance p1, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda2;-><init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget p1, Lcom/vaidilya/collegeconnect/R$id;->btnpage:I

    invoke-virtual {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 60
    new-instance v0, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/vaidilya/collegeconnect/activities/Subscription$$ExternalSyntheticLambda3;-><init>(Lcom/vaidilya/collegeconnect/activities/Subscription;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget p1, Lcom/vaidilya/collegeconnect/R$id;->statusText:I

    invoke-virtual {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->statusText:Landroid/widget/TextView;

    .line 70
    sget p1, Lcom/vaidilya/collegeconnect/R$id;->termsText:I

    invoke-virtual {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->termsText:Landroid/widget/TextView;

    .line 71
    sget p1, Lcom/vaidilya/collegeconnect/R$id;->buyBtn:I

    invoke-virtual {p0, p1}, Lcom/vaidilya/collegeconnect/activities/Subscription;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->buyBtn:Landroid/widget/Button;

    .line 73
    const-string p1, "USER_SESSION"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "uid"

    const/4 v2, 0x0

    .line 74
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->uid:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->setupTermsClickable()V

    .line 83
    invoke-direct {p0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->loadSubscriptionStatus()V

    return-void

    .line 77
    :cond_1
    :goto_0
    const-string p1, "User not logged in"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 78
    invoke-virtual {p0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 209
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->subscriptionListener:Lcom/google/firebase/database/ValueEventListener;

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const-string v1, "users"

    .line 213
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->uid:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/vaidilya/collegeconnect/activities/Subscription;->subscriptionListener:Lcom/google/firebase/database/ValueEventListener;

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 264
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 265
    invoke-direct {p0}, Lcom/vaidilya/collegeconnect/activities/Subscription;->loadSubscriptionStatus()V

    return-void
.end method
